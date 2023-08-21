import 'package:flutter/material.dart';


class EmiCalculatorWidget extends StatefulWidget {
  const EmiCalculatorWidget({super.key});

  @override
  State<EmiCalculatorWidget> createState() => _EmiCalculatorWidgetState();
}

class _EmiCalculatorWidgetState extends State<EmiCalculatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange.shade50, Colors.orange.shade300, Colors.orange.shade600],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
      child: Column(
        children: [
          Text("CALCULATE YOUR LOAN"),
          RichText(
              text:  TextSpan(
                children:  [
                  TextSpan(
                    text: "HOW MUCH", style: TextStyle(fontWeight: FontWeight.w700)
                  ),
                  TextSpan(
                    text: "Do You Need?"
                  )
                ]
              ),),
          SizedBox(height: 20,),
          //slider with text showing 1 lakh, 5 lakh, 10 lakh

        ],
      ),
    );
  }
}
