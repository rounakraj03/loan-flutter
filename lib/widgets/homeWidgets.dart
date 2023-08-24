import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/customElevatedButton.dart';
import 'package:flutter_loan/widgets/footer.dart';
import 'package:visibility_detector/visibility_detector.dart';

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


class HomeTwoWidget extends StatefulWidget {
  const HomeTwoWidget({super.key});

  @override
  State<HomeTwoWidget> createState() => _HomeTwoWidgetState();
}

class _HomeTwoWidgetState extends State<HomeTwoWidget> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));

    _animation = Tween<double>(begin: 1, end: 15).animate(_controller)
    ..addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return LayoutBuilder(
      builder: (context, constraints) {
      if(constraints.maxWidth > Constants.desktop_view) {
        return SizedBox();
      } else {
        return Container(
          child: Stack(
            children: [
              Container(
                height: 500,
                child: Image.asset(Assets.imageFrame2, fit: BoxFit.cover, color: Colors.transparent.withOpacity(0.1),),
              ),
              Positioned(
                top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(18.0),
                    margin: const EdgeInsets.only(left: 18.0, top: 18.0, bottom: 18.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange, width: 10),
                      ),
                        padding: const EdgeInsets.all(30),
                        child: Image.asset(Assets.secondWidgetImage, fit: BoxFit.cover,)),
                  )),
              Positioned(
                bottom: 50,
                  left: 0,
                  child: VisibilityDetector(
                    key: Key('second-widget-home'),
                    onVisibilityChanged: (info) {
                      if(info.visibleFraction > 0.8){
                        _controller.forward();
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 5),
                      width: width * 0.5,
                      color: Colors.black87,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(alignment: Alignment.center,width: 80,child: Text("${_animation.value.toInt()}",style: TextStyle(fontWeight: FontWeight.w600),)),
                          Expanded(child: Container(width: 60,child: Text("Years of Experience in finance",style: TextStyle(fontWeight: FontWeight.w600))))
                        ],
                      ),
              ),
                  ))
            ],
          ),
        );
      }
    },);
  }
}

class HomeThreeWidget extends StatelessWidget {
  const HomeThreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth > Constants.desktop_view) {
        return SizedBox();
      }
      else {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("ABOUT COMPANY", style: TextStyle(color: Colors.grey),),
                ],
              ),
              SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 26),
                    children: [
                      TextSpan(text: "Small Business Loans For ",style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "a Daily Expenses"),
                    ]
                ),
              ),
              SizedBox(height: 5,),
              UnderLineWidget(height: 3, width: 100,),
              SizedBox(height: 30,),

              Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore t dolore magna aliqua. Ut enim ad minim veniam quis.", style: TextStyle(color: Colors.black45, wordSpacing: 1, fontWeight: FontWeight.w700),),
              SizedBox(height: 30,),
              Text("what people are posting on social networks With a community of over. million users and a majority age group being 18 to 29. wouldn’t you want to make sure you’re monitoring what people are posting on social networks?", style: TextStyle(color: Colors.black38, wordSpacing: 1),),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCircularElevatedButton(child: Icon(Icons.play_arrow_rounded, color: Colors.white, size: 50,), onPressed: (){}),
                  SizedBox(width: 20,),
                  Text("How We Work", style: TextStyle(wordSpacing: 1, color: Colors.black),)
                ],
              )

            ],

          ),
        );
      }
    },);
  }
}


class HomeFourWidget extends StatefulWidget {
  const HomeFourWidget({super.key});

  @override
  State<HomeFourWidget> createState() => _HomeFourWidgetState();
}

class _HomeFourWidgetState extends State<HomeFourWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > Constants.desktop_view) {return SizedBox();}
        else {
          return Container(
            padding: const EdgeInsets.all(20.0),
            color: Color(0xFFF8f8f8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("OUR SERVICES", style: TextStyle(color: Colors.grey),),
                  ],
                ),
                SizedBox(height: 20,),
                RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 26),
                      children: [
                        TextSpan(text: "What We ",style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: "Offer for You"),
                      ]
                  ),
                ),
                SizedBox(height: 5,),
                UnderLineWidget(height: 3, width: 100,),
                SizedBox(height: 30,),
                CustomElevatedButton(child: "VIEW ALL", onPressed: (){}),
                SizedBox(height: 15,),

                // add carousel slider
                CarouselSlider(
                    items: [
                      Container(
                        color: Colors.white,
                        height: 200,
                        child: Column(
                          children: [],
                        ),
                      )
                    ],
                    options: CarouselOptions()
                ),

              ],
            ),
          );
        }
    },);
  }
}
