import 'package:flutter/material.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqWidgetsOne extends StatefulWidget {
  const FaqWidgetsOne({super.key});

  @override
  State<FaqWidgetsOne> createState() => _FaqWidgetsOneState();
}

class _FaqWidgetsOneState extends State<FaqWidgetsOne> {

  final unselectedBoxColor = [Color(0xfffea060), Color(0xfffd8861), Color(0xfffb6f62)];
  final selectedBoxColor = [Color(0xfff1f1f1), Color(0xfff1f1f1), Color(0xfff1f1f1)];

  final selectedTextStyle = GoogleFonts.mulish(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18);
  final unselectedTextStyle = GoogleFonts.mulish(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18);

  final unselectedChild = Image.asset(Assets.plusLogo, color: Colors.white,);
  final selectedChild = Image.asset(Assets.minusLogo, color: Color(0xff666666),);


  // bool isSelected = false;

  final questionAnswerList = [
    ["1. When should I apply?","Discover you question from underneath or present your inquiry fromt the submit box. Growing businesses need strong tax management to meet current and future tax liabilities and we can help you achieve this, whatever challenges you face."],
    ["2. Do you charge for your service?","Discover you question from underneath or present your inquiry fromt the submit box. Growing businesses need strong tax management to meet current and future tax liabilities and we can help you achieve this, whatever challenges you face."],
    ["3. How fast will my loan be funded?","Discover you question from underneath or present your inquiry fromt the submit box. Growing businesses need strong tax management to meet current and future tax liabilities and we can help you achieve this, whatever challenges you face."],
    ["4. What kind of business financing do you offer?","Discover you question from underneath or present your inquiry fromt the submit box. Growing businesses need strong tax management to meet current and future tax liabilities and we can help you achieve this, whatever challenges you face."],
    ["5. How long is an approved interest rate and loan offer valid?", "Discover you question from underneath or present your inquiry fromt the submit box. Growing businesses need strong tax management to meet current and future tax liabilities and we can help you achieve this, whatever challenges you face."]
  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
      child: Column(
        children: List.generate(questionAnswerList.length, (index) => FaqContainer(question: questionAnswerList[index][0], answer:  questionAnswerList[index][1]))
      ),
    );
  }

}


class FaqContainer extends StatefulWidget {
  final String question;
  final String answer;
  const FaqContainer({required this.question, required this.answer, super.key});

  @override
  State<FaqContainer> createState() => _FaqContainerState();
}

class _FaqContainerState extends State<FaqContainer> {

  final unselectedBoxColor = [Color(0xfffea060), Color(0xfffd8861), Color(0xfffb6f62)];
  final selectedBoxColor = [Color(0xfff1f1f1), Color(0xfff1f1f1), Color(0xfff1f1f1)];

  final selectedTextStyle = GoogleFonts.mulish(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18);
  final unselectedTextStyle = GoogleFonts.mulish(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18);

  final unselectedChild = Image.asset(Assets.plusLogo, color: Colors.white,);
  final selectedChild = Image.asset(Assets.minusLogo, color: Color(0xff666666),);


  bool isSelected = false;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTapDown: (details) => setState(() {
              isSelected = !isSelected;
            }),
            child: Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: unselectedBoxColor
                  )
              ),
              width: double.maxFinite,
              height: 80,
              alignment: Alignment.center,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text(widget.question,style: unselectedTextStyle,)),
                    SizedBox(height: 15,width: 15, child: unselectedChild,)
                  ]
              ),
            ),
          ),
          isSelected ? InkWell(
            onTapDown: (details) => setState(() {
              isSelected = !isSelected;
            }),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: selectedBoxColor
                  )
              ),
              width: double.maxFinite,
              alignment: Alignment.center,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text(widget.answer,style: selectedTextStyle,)),
                    SizedBox(height: 15,width: 15, child: selectedChild,)
                  ]
              ),
            ),
          ) : SizedBox(),
        ],
      ),
    );

  }
}

