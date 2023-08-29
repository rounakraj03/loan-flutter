import 'package:flutter/material.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/custom_text_field.dart';
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




  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if(width > Constants.desktop_view){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 150, vertical: 80),
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
                          CustomTextField(controller:loanAmountController,),
                        ],
                      ),
                    ),
                    SizedBox(width: 30,),
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Purpose of Loan", style: textstyle1),
                          SizedBox(height: 5,),
                          CustomTextField(controller:purposeOfLoanController,),
                        ],
                      ),
                    )
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
                          CustomTextField(controller:firstNameController,),
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
                          CustomTextField(controller:lastNameController,),
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
                          CustomTextField(controller:emailController,),
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
                          CustomTextField(controller:phoneController,),
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
                            CustomTextField(controller:dobController,),
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
                          Text("Marital Status", style: textstyle1),
                          SizedBox(height: 5,),
                          CustomTextField(controller:maritalStatusController,),
                        ],
                      ),
                    ),
                    SizedBox(width: 30,),
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Number of Dependants", style: textstyle1),
                          SizedBox(height: 5,),
                          CustomTextField(controller:numberOfDependantsController,),
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
                          Text("Country", style: textstyle1),
                          SizedBox(height: 5,),
                          CustomTextField(controller:countryController,),
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
                          CustomTextField(controller:cityController,),
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
                          CustomTextField(controller:streetController,),
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
                          CustomTextField(controller:houseNumberController,),
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
                          CustomTextField(controller:homeOwnerController,),
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
                          CustomTextField(controller:timeAtAddressController,),
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
                          Text("Employment Status", style: textstyle1),
                          SizedBox(height: 5,),
                          CustomTextField(controller:employmentStatusController,),
                        ],
                      ),
                    ),
                    SizedBox(width: 30,),
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Employment Industry", style: textstyle1),
                          SizedBox(height: 5,),
                          CustomTextField(controller:employmentIndustryController,),
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
                          CustomTextField(controller:employerNameController,),
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
                          CustomTextField(controller:workPhoneController,),
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
                          CustomTextField(controller:lengthOfEmploymentController,),
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
                          CustomTextField(controller:monthlyIncomeController,),
                        ],
                      ),),
                  ],
                ),

                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomElevatedButton(child: "APPLY NOW", onPressed: (){}, width: 180, height: 60,),
                  ],
                )



              ],
            ),
          );
        }
        else {
          return Container();
        }
      },);
  }
}

