import 'package:flutter/material.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/custom_text_field.dart';
import 'package:flutter_loan/res/validator.dart';
import 'package:flutter_loan/widgets/customElevatedButton.dart';

class ApplyNowForm extends StatefulWidget {
  const ApplyNowForm({super.key});

  @override
  State<ApplyNowForm> createState() => _ApplyNowFormState();
}

class _ApplyNowFormState extends State<ApplyNowForm> {
  final textstyle1 = TextStyle(color: Color(0xff6666666), fontSize: 16);

  final loanAmountController  = TextEditingController();
  final purposeOfLoanController  = TextEditingController();
  final genderController  = TextEditingController();
  final firstNameController  = TextEditingController();
  final lastNameController  = TextEditingController();
  final emailController  = TextEditingController();
  final phoneController  = TextEditingController();
  final dobController  = TextEditingController();
  final maritalStatusController  = TextEditingController();
  final numberOfDependantsController  = TextEditingController();
  final countryController  = TextEditingController();
  final cityController  = TextEditingController();
  final streetController  = TextEditingController();
  final houseNumberController  = TextEditingController();
  final homeOwnerController  = TextEditingController();
  final timeAtAddressController  = TextEditingController();
  final employmentStatusController  = TextEditingController();
  final employmentIndustryController  = TextEditingController();
  final employerNameController  = TextEditingController();
  final workPhoneController  = TextEditingController();
  final lengthOfEmploymentController  = TextEditingController();
  final monthlyIncomeController  = TextEditingController();


  List<String> purposeOfLoanOptions =  ["Business Loan", "Loan Against Property", "Personal Loan", "Home Loan", "Car Loan", "General Insurance", "Health Insurance"];
  List<String> maritalStatusOptions = ["Married", "Single", "Divorced", "Widowed", "seperated"];
  List<String> numberOfDependantsOptions = ["0 Dependants", "1 Dependants", "2 Dependants", "3 Dependants", "4 Dependants", "5 Dependants", "5+ Dependants"];
  List<String> employmentStatusOptions = ['Full Time Employed', 'Full Time Employed', 'Part Time Employed', 'Self Employed', 'Student', 'Pension', 'Disability', 'unemployed'];

  final applyUsFormKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if(width > Constants.desktop_view){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 150, vertical: 80),
            child: Form(
              key: applyUsFormKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Loan Amount (₹)", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:loanAmountController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Purpose of Loan", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomDropdown(
                              items: purposeOfLoanOptions.map((e) => DropdownMenuItem(
                                value: e.toString(),
                                child: Text(e.toString()),
                              )).toList(),
                              onChanged: (value) => setState(() {
                                if(value != null) {
                                  purposeOfLoanController.text = value;
                                }
                              }),
                            ),
                          ],
                        ))
                    ],
                  ),
                  //todo add gender radio button
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("First Name", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:firstNameController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Last Name", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:lastNameController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:emailController, validatorType: ValidatorType.validateEmail),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mobile Phone", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:phoneController, validatorType: ValidatorType.validateMobile),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Date of Birth", style: textstyle1),
                              SizedBox(height: 5,),
                              CustomTextField(controller:dobController, validatorType: ValidatorType.validateNotNull),
                            ],
                          ),),
                    ],
                  ),

                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Flexible(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Marital Status", style: textstyle1),
                          SizedBox(height: 5,),
                          CustomDropdown(
                            items: maritalStatusOptions.map((e) => DropdownMenuItem(
                              value: e.toString(),
                              child: Text(e.toString()),
                            )).toList(),
                            onChanged: (value) => setState(() {
                              if(value != null) {
                                maritalStatusController.text = value;
                              }
                            }),
                          ),
                        ],
                      )),
                      SizedBox(width: 30,),
                      Flexible(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Number of Dependants", style: textstyle1),
                          SizedBox(height: 5,),
                          CustomDropdown(
                            items: numberOfDependantsOptions.map((e) => DropdownMenuItem(
                              value: e.toString(),
                              child: Text(e.toString()),
                            )).toList(),
                            onChanged: (value) => setState(() {
                              if(value != null) {
                                numberOfDependantsController.text = value;
                              }
                            }),
                          ),
                        ],
                      )),
                    ],
                  ),

                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Country", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:countryController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Town/City", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:cityController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Street", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:streetController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),),
                    ],
                  ),


                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("House Name/Number", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:houseNumberController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Home Owner Status", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:homeOwnerController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Time at Address", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:timeAtAddressController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),),
                    ],
                  ),



                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Flexible(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Employment Status", style: textstyle1),
                          SizedBox(height: 5,),
                          CustomDropdown(
                            items: employmentStatusOptions.map((e) => DropdownMenuItem(
                              value: e.toString(),
                              child: Text(e.toString()),
                            )).toList(),
                            onChanged: (value) => setState(() {
                              if(value != null) {
                                employmentStatusController.text = value;
                              }
                            }),
                          ),
                        ],
                      )),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Employment Industry", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:employmentIndustryController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Employer Name", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:employerNameController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),),
                    ],
                  ),



                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Work Phone Number", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:workPhoneController, validatorType: ValidatorType.validateMobile),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Length of Employment", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:lengthOfEmploymentController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),
                      ),
                      SizedBox(width: 30,),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Monthly Income(₹)", style: textstyle1),
                            SizedBox(height: 5,),
                            CustomTextField(controller:monthlyIncomeController, validatorType: ValidatorType.validateNotNull),
                          ],
                        ),),
                    ],
                  ),

                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomElevatedButton(child: "APPLY NOW", onPressed: (){
                        if(applyUsFormKey.currentState!.validate()){
                          print("FORM VALIDATED");
                          print("loanAmountController => ${loanAmountController.text}");
                          print("purposeOfLoanController => ${purposeOfLoanController.text}");
                          print("genderController => ${genderController.text}");
                          print("firstNameController => ${firstNameController.text}");
                          print("lastNameController => ${lastNameController.text}");
                          print("emailController => ${emailController.text}");
                          print("phoneController => ${phoneController.text}");
                          print(" dobController => ${dobController.text}");
                          print("maritalStatusController => ${maritalStatusController.text}");
                          print("numberOfDependantsController => ${numberOfDependantsController.text}");
                          print("countryController  => ${countryController.text}");
                          print("cityController => ${cityController.text}");
                          print("streetController => ${streetController.text}");
                          print("houseNumberController => ${houseNumberController.text}");
                          print("homeOwnerController => ${homeOwnerController.text}");
                          print("timeAtAddressController => ${timeAtAddressController.text}");
                          print("employmentStatusController => ${employmentStatusController.text}");
                          print("employmentIndustryController => ${employmentIndustryController.text}");
                          print("employerNameController => ${employerNameController.text}");
                          print("workPhoneController => ${workPhoneController.text}");
                          print("lengthOfEmploymentController => ${lengthOfEmploymentController.text}");
                          print("monthlyIncomeController => ${monthlyIncomeController.text}");
                        }
                      }, width: 180, height: 60,),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        else {
          return Container();
        }
      },);
  }
}

