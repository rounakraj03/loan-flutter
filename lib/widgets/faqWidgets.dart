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
    ["1. Can I prepay my business loan?"," Yes, you can prepay your business loan after a certain period, usually after 6 months from the loan disbursement date. Prepayment charges may apply."],
    ["2. What is the maximum loan amount I can borrow for a home loan?","The maximum loan amount depends on various factors such as your income, credit score, and the value of the property. Usually, up to 80% of the property value can be financed."],
    ["3. How quickly can I get a personal loan?","Once you have submitted all necessary documents, you can expect approval within 48 to 72 hours, depending on the lender."],
    ["4. Can I get a car loan for a used vehicle?","Yes, many lenders offer loans for both new and used vehicles. The terms and conditions might differ."],
    ["5.  What kind of properties are eligible for a loan against property?", "Both residential and commercial properties are generally eligible. However, the property must be free from legal disputes."]
  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width > 1200 ? 40 : 10, vertical: width > 1200 ? 20 : 5),
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
          SizedBox(height: 10,),
          InkWell(
            onTapDown: (details) => setState(() {
              isSelected = !isSelected;
            }),
            child: Container(
              padding: EdgeInsets.only(left: width > 1200 ? 50 : 10, right: width > 1200 ? 50 : 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: unselectedBoxColor
                  )
              ),
              width: double.maxFinite,
              height: width > 1200 ? 80 : 100,
              alignment: Alignment.center,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text(widget.question,style: unselectedTextStyle.copyWith(fontSize: width > 1200 ? 18 : 14),)),
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
              padding: EdgeInsets.symmetric(vertical: width > 1200 ? 30 : 30, horizontal: width > 1200 ? 50 : 10),
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
                    Expanded(child: Text(widget.answer,style: selectedTextStyle.copyWith(fontSize: width > 1200 ? 18 : 14),)),
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

