import 'package:flutter/material.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/customElevatedButton.dart';
import 'package:flutter_loan/widgets/footer.dart';

class HomeOneWidget extends StatefulWidget {
  const HomeOneWidget({super.key});

  @override
  State<HomeOneWidget> createState() => _HomeOneWidgetState();
}

class _HomeOneWidgetState extends State<HomeOneWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth > Constants.desktop_view){
      // if(constraints.maxWidth > 30000){
        return Stack(
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.white70, Colors.white60]
                  )
              ),
              child: Image.asset(Assets.manMug, fit: BoxFit.cover,),
            ),
            Positioned(
                top: 0,
                bottom: 0,
                left: 100,
                child: SizedBox(
                  width: width/1.5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50,),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(wordSpacing: 1, fontSize: 80, color: Colors.white),
                            children: [
                              TextSpan(text:"Simple. Transparent. Secure\n\n", style: TextStyle(fontSize: 25, wordSpacing: 2)),
                              TextSpan(text: "Building a brighter\n", style: TextStyle(fontWeight: FontWeight.bold) ),
                              TextSpan(text: "financial future"),
                            ]
                        ),
                      ),
                      UnderLineWidget(underlineColor: Colors.white,height: 2,),
                      SizedBox(height: 10,),
                      CustomElevatedButton(onPressed: (){}, child: "GET LOAN")
                    ],
                  ),
                )
            ),
            Positioned(
              bottom: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 2),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.center,
                    color: Colors.transparent.withOpacity(0.3),
                    height: 50,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 2),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.center,
                    color: Colors.transparent.withOpacity(0.3),
                    height: 50,
                    child: Row(
                      children: [
                        Text("Hello world"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 2),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.center,
                    color: Colors.transparent.withOpacity(0.3),
                    height: 50,
                    child: Row(
                      children: [
                        Text("Hello world"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 2),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.center,
                    color: Colors.transparent.withOpacity(0.3),
                    height: 50,
                    child: Row(
                      children: [
                        Text("Hello world"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 2),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.center,
                    color: Colors.transparent.withOpacity(0.3),
                    height: 50,
                    child: Row(
                      children: [
                        Text("Hello world"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 2),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    alignment: Alignment.center,
                    color: Colors.transparent.withOpacity(0.3),
                    height: 50,
                    child: Text(""),
                  ),
                ],
              ),
            )
          ],
        );
      }
      else {
        return Stack(
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.white70, Colors.white60]
                )
              ),
              child: Image.asset(Assets.manMug, fit: BoxFit.cover,),
            ),
            Positioned(
                top: 0,
                bottom: 0,
                left: 20,
                child: SizedBox(
                  width: width/1.5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50,),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(wordSpacing: 1, fontSize: 24, color: Colors.white),
                            children: [
                              TextSpan(text: "Building a brighter ", style: TextStyle(fontWeight: FontWeight.bold) ),
                              TextSpan(text: "financial future"),
                            ]
                        ),
                      ),
                      UnderLineWidget(underlineColor: Colors.white,height: 2,),
                      SizedBox(height: 10,),
                      CustomElevatedButton(onPressed: (){}, child: "GET LOAN")
                    ],
                  ),
                )
            )
          ],
        );
      }
    },);
  }
}
