import 'package:flutter/material.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/res/validator.dart';
import 'package:flutter_loan/widgets/customElevatedButton.dart';
import 'package:google_fonts/google_fonts.dart';


class ContactUsWidgetOne extends StatelessWidget {
  const ContactUsWidgetOne({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = MediaQuery.of(context).size.width;
        return Container(
          // color: Colors.white,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Container(
                  padding: EdgeInsets.only(left: width * 0.05, top: 70, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("COME VISIT US AT", style: TextStyle(color: Color(0xff666666), fontSize: 14, letterSpacing: 1, wordSpacing: 1),),
                      SizedBox(height: 6,),
                      RichText(text: TextSpan(
                          style: GoogleFonts.poppins(wordSpacing: 1, letterSpacing: 1, fontSize: 38),
                          children: [
                            TextSpan(text: "OUR ", style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "ADDRESS"),
                          ]
                      )),
                    ],
                  ),
                ),
              GradientCircularContainer(image: Assets.mapsIcon,heading: "Our Address", subHeading: "2851 Southside Lane, Los Angeles, Ca"),
              GradientCircularContainer(image: Assets.callIcon,heading: "Our Phone Number", subHeading: "+1-323-778-4054"),
              GradientCircularContainer(image: Assets.mailIcon,heading: "Our Email", subHeading: "mentry@example.com"),

            ],
          ),
        );
      }
    );
  }
}

class GradientCircularContainer extends StatelessWidget {
  final String image;
  final String heading;
  final String subHeading;
  const GradientCircularContainer({super.key, required this.image, required this.heading, required this.subHeading});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: width*0.05,),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [Color(0xfffe9f60), Color(0xfffc8761),Color(0xfffb7362)]),
            ),
            padding: EdgeInsets.all(20),
            child: Image.asset(image, fit: BoxFit.cover, color: Colors.white,),
          ),
          SizedBox(width: 30,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              RichText(text: TextSpan(text: heading, style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18, wordSpacing: 1),)  ),
              SizedBox(height: 10,),
              RichText(text: TextSpan(text: subHeading, style:TextStyle(color: Color(0xff8b8b8b), fontSize: 15),))
            ],
          )
        ],
      ),
    );
  }
}


class ContactUsWidgetTwo extends StatefulWidget {
  const ContactUsWidgetTwo({super.key});

  @override
  State<ContactUsWidgetTwo> createState() => _ContactUsWidgetTwoState();
}

class _ContactUsWidgetTwoState extends State<ContactUsWidgetTwo> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final websiteController = TextEditingController();
  final messageController = TextEditingController();

  final contactFormKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          double width = MediaQuery.of(context).size.width;
          return Container(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, bottom: 50),
            color: Color(0xfff8f8f8),
            width: double.maxFinite,
            child: Form(
              key: contactFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("SEND MESSAGE", style: TextStyle(color: Color(0xff666666), fontSize: 14, letterSpacing: 1, wordSpacing: 1),),
                        SizedBox(height: 0,),
                        RichText(text: TextSpan(
                            style: GoogleFonts.poppins(wordSpacing: 1, letterSpacing: 1, fontSize: 38),
                            children: [
                              TextSpan(text: "DROP US ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "A LINE"),
                            ]
                        )),
                        SizedBox(height: 15,)
                      ],
                    ),
                  ),
                 Row(
                   children: [
                     Flexible(
                       flex: 1,
                       child: FtTextField(
                         controller: nameController,
                         hint: "Your Name",
                         inputType: TextInputType.name,
                         validatorType: ValidatorType.validateName,
                       ),
                     ),
                     SizedBox(width: 30,),
                     Flexible(
                       flex: 1,
                       child: FtTextField(
                         controller: phoneController,
                         hint: "Your Phone",
                         inputType: TextInputType.number,
                         validatorType: ValidatorType.validateMobile,
                       ),
                     ),
                   ],
                 ),
                  SizedBox(height: 25,),
                  Row(
                   children: [
                     Flexible(
                       flex: 1,
                       child: FtTextField(
                         controller: emailController,
                         hint: "Your Email",
                         inputType: TextInputType.emailAddress,
                         validatorType: ValidatorType.validateEmail,
                       ),
                     ),
                     SizedBox(width: 30,),
                     Flexible(
                       flex: 1,
                       child: FtTextField(
                         controller: websiteController,
                         hint: "Website URL",
                         inputType: TextInputType.text,
                         // validatorType: ValidatorType.validateNotNull,
                       ),
                     ),
                   ],
                 ),
                  SizedBox(height: 25,),
                  FtTextField(
                    controller: messageController,
                    hint: "Message",
                    inputType: TextInputType.text,
                    // validatorType: ValidatorType.validateNotNull,
                    maxLines: 7,
                  ),

                  SizedBox(height: 25,),

                  CustomElevatedButton(child: "SEND MESSAGE", onPressed: (){
                    if(contactFormKey.currentState!.validate()) {
                      setState(() {
                        print("Validated -> \n name -> ${nameController.text} \n phoneNumber -> ${phoneController.text} \n emailController -> ${emailController.text} \n websiteURL -> ${websiteController.text} \n message -> ${messageController.text}");
                        nameController.text = "";
                        phoneController.text = "";
                        emailController.text = "";
                        websiteController.text = "";
                        messageController.text = "";
                      });


                    }else{
                      print("not validated");
                    }

                  }, width: 200,)

                ],
              ),
            ),
          );
        }
    );
  }
}


class FtTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final TextInputType? inputType;
  final ValidatorType? validatorType;
  final int? maxLines;
  const FtTextField({super.key, required this.controller, required this.hint, this.inputType, this.validatorType, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      keyboardType: inputType,
      controller: controller,
      cursorColor: Color(0xff6d7a8c),
      style: TextStyle(color: Color(0xff6d7a8c)),
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xffafb6c0), fontSize: 13),
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide.none
          )
      ),
      validator: (String? value) {
        var validatorsType = validatorType;
        Validator validator = Validator();
        switch (validatorsType) {
          case ValidatorType.validateName:
            return validator.validateName(value);
          case ValidatorType.validateAddress:
            return validator.validateIsNotEmptyOrNull("Address",value);
          case ValidatorType.validateMobile:
            return validator.validateMobile(value);
          case ValidatorType.validateEmail:
            return validator.validateEmail(value);
          case ValidatorType.validateNotNull:
            return validator.validateIsNotEmptyOrNull("The field is required.", value);
          default:
            return null;
        }
      },
    );
  }
}
