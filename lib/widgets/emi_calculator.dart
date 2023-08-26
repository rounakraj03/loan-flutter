import 'package:flutter/material.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'dart:math';

import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/customElevatedButton.dart';


class EmiCalculatorWidget extends StatefulWidget {
  const EmiCalculatorWidget({super.key});

  @override
  State<EmiCalculatorWidget> createState() => _EmiCalculatorWidgetState();
}

class _EmiCalculatorWidgetState extends State<EmiCalculatorWidget> {
  double _sliderValueAmount = 200000;
  double _sliderValueMonths = 5;
  double _sliderValueInterest = 2;
  double emiValue = 0.0;
  double totalInterest = 0.0;

  void calculateTotalInterest(double principle, double emiValue, double years) {
    double totalPayments = years * 12;
    setState(() {
      totalInterest = (emiValue * totalPayments) - principle;
    });
  }

  void calculateMyEmi(double principle, double interestPerYear, double years) {
    double interestPerMonth = interestPerYear / 12 / 100; // Convert annual interest rate to monthly and percentage to decimal
    double timeInMonths = years * 12;
    setState(() {
      double numerator = principle * interestPerMonth * pow((1 + interestPerMonth), timeInMonths);
      double denominator = pow((1 + interestPerMonth), timeInMonths) - 1;
      emiValue = numerator / denominator;
    });
    calculateTotalInterest(principle, emiValue, years);
  }


  @override
  void initState() {
    super.initState();
    calculateMyEmi(_sliderValueAmount, _sliderValueInterest, _sliderValueMonths);
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if(width > Constants.desktop_view){
          return Stack(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // padding: EdgeInsets.symmetric(vertical: 50),
                        width: width/2,
                        child: Image.asset(Assets.sliderGirlImage, fit: BoxFit.cover,)),

                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                        width: width/2,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              // colors: [Colors.red.shade300, Colors.red.shade600, Colors.red.shade800],
                              colors: [Color(0xfffe9860),Color(0xfffc8761), Color(0xfffb7262)],
                              // begin: Alignment.topLeft,
                              // end: Alignment.bottomRight
                            )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CALCULATE YOUR LOAN", style: TextStyle(letterSpacing: 2, wordSpacing: 2), ),
                            SizedBox(height: 10,),
                            RichText(
                              text:  TextSpan(
                                  style: TextStyle(letterSpacing: 2, wordSpacing: 2, color: Colors.white, fontSize: 40),
                                  children:  [
                                    TextSpan(
                                        text: "How Much ", style: TextStyle(fontWeight: FontWeight.bold)
                                    ),
                                    TextSpan(
                                        text: "Do You Need?"
                                    )
                                  ]
                              ),),
                            SizedBox(height: 30,),
                            //slider with text showing 1 lakh, 5 lakh, 10 lakh
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("1 lakh"),
                                    Container(width: 100, alignment: Alignment.center, child: Text(_sliderValueAmount.toStringAsFixed(2))), // Dynamic value
                                    Text("1 crore"),
                                  ],
                                ),
                                Slider(
                                    activeColor: Colors.black,
                                    inactiveColor: Colors.black45,
                                    min: 100000,
                                    max: 10000000,
                                    value: _sliderValueAmount,
                                    onChanged: (value) {
                                      setState(() {
                                        _sliderValueAmount = (value / 50000).round() * 50000;
                                        calculateMyEmi(_sliderValueAmount, _sliderValueInterest, _sliderValueMonths);
                                      });
                                    }
                                ),

                                SizedBox(height: 50,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("2 percent"),
                                    Container(width: 100, alignment: Alignment.center, child: Text((_sliderValueInterest).toStringAsFixed(2) + " percent")), // Dynamic value
                                    Text("25 percent"),
                                  ],
                                ),
                                Slider(
                                  activeColor: Colors.black,
                                  inactiveColor: Colors.black45,
                                  value: _sliderValueInterest,
                                  min: 2.0,         // Start from 2%
                                  max: 25.0,        // End at 25%
                                  divisions: 92,    // (25-2)/0.25 = 92 divisions
                                  onChanged: (value) {
                                    setState(() {
                                      _sliderValueInterest = value;
                                      calculateMyEmi(_sliderValueAmount, _sliderValueInterest, _sliderValueMonths);
                                    });
                                  },
                                ),
                                SizedBox(height: 50,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("1 month"),
                                    Container(width: 100, alignment: Alignment.center, child: Text((_sliderValueMonths).toStringAsFixed(1) + " year")), // Dynamic value
                                    Text("30 years"),
                                  ],
                                ),
                                Slider(
                                  activeColor: Colors.black,
                                  inactiveColor: Colors.black45,
                                  value: _sliderValueMonths,
                                  min: 0,
                                  max: 30,
                                  divisions: 60,
                                  onChanged: (value) {
                                    setState(() {
                                      _sliderValueMonths = value;
                                      calculateMyEmi(_sliderValueAmount, _sliderValueInterest, _sliderValueMonths);
                                    });
                                  },),

                                SizedBox(height: 50,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width: width/6,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Loan Emi :", style: TextStyle(letterSpacing: 1),),
                                            SizedBox(height: 20,),
                                            Text(emiValue.toStringAsFixed(2), style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 28),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width: width/6,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Total Interest Payable :", style: TextStyle(letterSpacing: 1),),
                                            SizedBox(height: 20,),
                                            Text(totalInterest.toStringAsFixed(2), style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 28),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        width: width/6,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,

                                          children: [
                                            Text("You must return :", style: TextStyle(letterSpacing: 1),),
                                            SizedBox(height: 20,),
                                            Text((_sliderValueAmount+totalInterest).toStringAsFixed(2), style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 28),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 70,),
                                Center(child: CustomWhiteElevatedButton(child: "APPLY FOR THIS LOAN", onPressed: (){}, width: 200,)),
                                SizedBox(height: 20,)
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  width: width/3,
                  padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                  margin: EdgeInsets.only(right: 20),
                  color: Color(0xff323232),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 24, wordSpacing: 2),
                        children: [
                          TextSpan(text:"People had the opportunity to study in a " ),
                          TextSpan(text:"prestigious university ", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.normal)),
                          TextSpan(text:"thanks to our loans"),
                        ]
                    ),
                  ),
                ),
              ),
            ],
          );
        }
        else {
          return Column(
            children: [
              SizedBox(
                  width: width,
                  height: 300,
                  child: Image.asset(Assets.sliderGirlImage, fit: BoxFit.cover,)),
              Container(
                padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                color: Color(0xff323232),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24, wordSpacing: 2),
                      children: [
                        TextSpan(text:"People had the opportunity to study in a " ),
                        TextSpan(text:"prestigious university ", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.normal)),
                        TextSpan(text:"thanks to our loans"),
                      ]
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      // colors: [Colors.red.shade300, Colors.red.shade600, Colors.red.shade800],
                      colors: [Color(0xfffe9860),Color(0xfffc8761), Color(0xfffb7262)],
                      // begin: Alignment.topLeft,
                      // end: Alignment.bottomRight
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("CALCULATE YOUR LOAN", style: TextStyle(letterSpacing: 1), ),
                    SizedBox(height: 10,),
                    RichText(
                      text:  TextSpan(
                          children:  [
                            TextSpan(
                                text: "HOW MUCH ", style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 20)
                            ),
                            TextSpan(
                                text: "Do You Need?", style: TextStyle(letterSpacing: 1, fontSize: 20)
                            )
                          ]
                      ),),
                    SizedBox(height: 30,),
                    //slider with text showing 1 lakh, 5 lakh, 10 lakh
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("1 lakh"),
                            Container(width: 100, alignment: Alignment.center, child: Text(_sliderValueAmount.toStringAsFixed(2))), // Dynamic value
                            Text("1 crore"),
                          ],
                        ),
                        Slider(
                            activeColor: Colors.black,
                            inactiveColor: Colors.black45,
                            min: 100000,
                            max: 10000000,
                            value: _sliderValueAmount,
                            onChanged: (value) {
                              setState(() {
                                _sliderValueAmount = (value / 50000).round() * 50000;
                                calculateMyEmi(_sliderValueAmount, _sliderValueInterest, _sliderValueMonths);
                              });
                            }
                        ),

                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("2 percent"),
                            Container(width: 100, alignment: Alignment.center, child: Text((_sliderValueInterest).toStringAsFixed(2) + " percent")), // Dynamic value
                            Text("25 percent"),
                          ],
                        ),
                        Slider(
                          activeColor: Colors.black,
                          inactiveColor: Colors.black45,
                          value: _sliderValueInterest,
                          min: 2.0,         // Start from 2%
                          max: 25.0,        // End at 25%
                          divisions: 92,    // (25-2)/0.25 = 92 divisions
                          onChanged: (value) {
                            setState(() {
                              _sliderValueInterest = value;
                              calculateMyEmi(_sliderValueAmount, _sliderValueInterest, _sliderValueMonths);
                            });
                          },
                        ),
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("1 month"),
                            Container(width: 100, alignment: Alignment.center, child: Text((_sliderValueMonths).toStringAsFixed(1) + " year")), // Dynamic value
                            Text("30 years"),
                          ],
                        ),
                        Slider(
                          activeColor: Colors.black,
                          inactiveColor: Colors.black45,
                          value: _sliderValueMonths,
                          min: 0,
                          max: 30,
                          divisions: 60,
                          onChanged: (value) {
                            setState(() {
                              _sliderValueMonths = value;
                              calculateMyEmi(_sliderValueAmount, _sliderValueInterest, _sliderValueMonths);
                            });
                          },),

                        SizedBox(height: 50,),
                        Text("Loan Emi :", style: TextStyle(letterSpacing: 1),),
                        Text(emiValue.toStringAsFixed(2), style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 28),),
                        SizedBox(height: 50,),
                        Text("Total Interest Payable :", style: TextStyle(letterSpacing: 1),),
                        Text(totalInterest.toStringAsFixed(2), style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 28),),
                        SizedBox(height: 50,),
                        Text("Total Payment(Principal + Interest)", style: TextStyle(letterSpacing: 1),),
                        Text((_sliderValueAmount+totalInterest).toStringAsFixed(2), style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 28),),

                        SizedBox(height: 70,),
                        CustomWhiteElevatedButton(child: "APPLY FOR THIS LOAN", onPressed: (){}),
                        SizedBox(height: 20,)
                      ],
                    )

                  ],
                ),
              ),
            ],
          );
        }

      }
    );
  }
}
