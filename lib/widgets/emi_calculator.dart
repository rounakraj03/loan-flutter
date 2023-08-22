import 'package:flutter/material.dart';
import 'dart:math';


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


  void calculateMyEmi(double principle, double interestPerYear, double years) {
    double interestPerMonth = interestPerYear / 12 / 100; // Convert annual interest rate to monthly and percentage to decimal
    double timeInMonths = years * 12;
    setState(() {
      double numerator = principle * interestPerMonth * pow((1 + interestPerMonth), timeInMonths);
      double denominator = pow((1 + interestPerMonth), timeInMonths) - 1;
      emiValue = numerator / denominator;
    });
  }


  @override
  void initState() {
    super.initState();
    calculateMyEmi(_sliderValueAmount, _sliderValueInterest, _sliderValueMonths);
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red.shade300, Colors.red.shade600, Colors.red.shade800],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
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
                    text: "HOW MUCH ", style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 1, fontSize: 20)
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
              Text(emiValue.toStringAsFixed(2), style: TextStyle(letterSpacing: 1, fontWeight: FontWeight.bold),)
            ],
          )

        ],
      ),
    );
  }
}
