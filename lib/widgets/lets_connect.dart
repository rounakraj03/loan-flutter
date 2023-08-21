import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loan/res/custom_text_field.dart';
import 'package:flutter_loan/res/snackbar.dart';
import 'package:flutter_loan/res/validator.dart';
import 'package:google_fonts/google_fonts.dart';


class FormPopup extends StatefulWidget {
  @override
  _FormPopupState createState() => _FormPopupState();
}

class _FormPopupState extends State<FormPopup> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final placeController = TextEditingController();
  final dio = Dio();

  @override
  void initState() {
    super.initState();
    dio.interceptors.add(LogInterceptor(
        logPrint: (object) {
          log(object.toString());
        },
        responseBody: true,
        error: true,
        requestHeader: true,
        responseHeader: false,
        request: true,
        requestBody: true));
  }

  void getHttp({required String name, required String email, required String phone, required String location}) async {
    final response = await dio.post('https://t2cgjaej67.execute-api.ap-south-1.amazonaws.com/sendMail',
        data :{
          "recipient_email" : "rounakraj03092000@gmail.com",
          "subject" : "HOMECLUES NEW QUERY",
          "body" : "Name: $name \n Email: $email \n phone: $phone \n Location: $location \n "
        }
    );
    // print("RESPONSE -> $response");
    String result= "";
    if(response.toString().toLowerCase().contains("success")){
      result = "SUCCESS";
    }
    else {
      result = "SORRY..There is some technical difficulty. Please Try again after some time";
    }
    showSnackBar(title: result);

  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Let's build Your Dream home", style: GoogleFonts.akshar(fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(height: 20,),
            CustomTextField2(
              validatorType:  ValidatorType.validateName,
              controller: nameController,
              hint:'Name',
            ),
            CustomTextField2(
              validatorType:  ValidatorType.validateMobile,
              controller: phoneController,
              hint:'Phone Number',
            ),
            CustomTextField2(
              validatorType:  ValidatorType.validateEmail,
              controller: emailController,
              hint:'Email',
            ),
            CustomTextField2(
              validatorType:  ValidatorType.validateAddress,
              controller: placeController,
              hint:'Address',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
              onPressed: () {
                if(_formKey.currentState!.validate()){
                  getHttp(
                      name: nameController.text,
                      email: emailController.text,
                      phone: phoneController.text,
                      location: placeController.text
                  );
                  nameController.text = "";
                  emailController.text = "";
                  phoneController.text = "";
                  placeController.text = "";
                }
              },
              child: Text('Submit', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}