import 'package:flutter/material.dart';


class EmiCalculatorWidget extends StatefulWidget {
  const EmiCalculatorWidget({super.key});

  @override
  State<EmiCalculatorWidget> createState() => _EmiCalculatorWidgetState();
}

class _EmiCalculatorWidgetState extends State<EmiCalculatorWidget> {
  double _sliderValueAmount = 0.5;
  double _sliderValueMonths = 0.2;
  double _sliderValueInterest = 0.2;

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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("1 lakh"),
                  Container(width: 100, alignment: Alignment.center, child: Text(((_sliderValueAmount * 9900000) + 100000).toInt().toString())), // Dynamic value
                  Text("1 crore"),
                ],
              ),
              Slider(
                activeColor: Colors.black,
                inactiveColor: Colors.black45,
                value: _sliderValueAmount,
                onChanged: (value) {
                  setState(() {
                    double newValue = (value * 9900000) + 100000;
                    double roundedValue = (newValue / 50000).round().toDouble() * 50000;
                    _sliderValueAmount = (roundedValue - 100000) / 9900000;
                  });
                },
              ),

              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("2 percent"),
                  Container(width: 100, alignment: Alignment.center, child: Text((_sliderValueInterest/4).toString() + " percent")), // Dynamic value
                  Text("25 percent"),
                ],
              ),
              Slider(
                activeColor: Colors.black,
                inactiveColor: Colors.black45,
                value: _sliderValueInterest,
                min: 8,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    _sliderValueInterest= (value.roundToDouble());
                  });
                },
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("1 year"),
                  Container(width: 100, alignment: Alignment.center, child: Text((_sliderValueMonths/2).toString() + " year")), // Dynamic value
                  Text("30 years"),
                ],
              ),
              Slider(
                activeColor: Colors.black,
                inactiveColor: Colors.black45,
                value: _sliderValueMonths,
                min: 0,
                max: 60,
                onChanged: (value) {
                  setState(() {
                    _sliderValueMonths = (value.roundToDouble());
                  });
                },
              ),
            ],
          )

        ],
      ),
    );
  }
}
