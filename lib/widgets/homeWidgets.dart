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
      // if(constraints.maxWidth > Constants.desktop_view){
      if(constraints.maxWidth > 30000){
        return SizedBox();
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
              child: Image.asset(Assets.smilingMan, fit: BoxFit.cover,),
            ),
            Positioned(
                child: SizedBox(
                  width: width/1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(wordSpacing: 1, fontSize: 30, color: Colors.white),
                            children: [
                              TextSpan(text: "Building a brighter ", style: TextStyle(fontWeight: FontWeight.bold) ),
                              TextSpan(text: "financial future"),
                            ]
                        ),
                      ),
                      UnderLineWidget(underlineColor: Colors.white,height: 2,),
                      SizedBox(height: 10,),
                      CustomElevatedButton(onPressed: (){}, child: "GET LOANS")
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
