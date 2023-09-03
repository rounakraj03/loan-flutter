import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/customElevatedButton.dart';
import 'package:flutter_loan/widgets/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
              child: Image.asset(Assets.img4, fit: BoxFit.cover,),
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
                              TextSpan(text: "Building a ", style: TextStyle(fontWeight: FontWeight.bold) ),
                              TextSpan(text: "brighter\n", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffff5854)) ),
                              TextSpan(text: "financial "),
                              TextSpan(text: "future", style: TextStyle(color: Color(0xffff5854))),
                            ]
                        ),
                      ),
                      UnderLineWidget(underlineColor: Colors.white,height: 2, width: 100,),
                      SizedBox(height: 10,),
                      CustomElevatedButton(onPressed: (){
                        Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                        Navigator.of(context).pushNamed('/apply-now');
                      }, child: "GET LOAN", width: 200, height: 70)
                    ],
                  ),
                )
            ),
            (width < 1450) ? SizedBox() :
            Positioned(
              bottom: 0,
              child: Container(
                width: width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 2),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.2),
                        height: 80,
                        child: Text(""),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(right: 2),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.2),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 60, width: 60, child: Image.asset(Assets.imageFour, color: Colors.white, fit: BoxFit.cover,),),
                            SizedBox(width: 10,),
                            Text("Fast Approvals", style: TextStyle(wordSpacing: 1, fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(right: 2),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.2),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 55, width: 55, child: Image.asset(Assets.imageOne, color: Colors.white, fit: BoxFit.cover,),),
                            SizedBox(width: 10,),
                            Text("500,000 Customers", style: TextStyle(wordSpacing: 1,fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(right: 2),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.2),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 40, width: 40, child: Image.asset(Assets.imageThree, color: Colors.white, fit: BoxFit.cover,),),
                            SizedBox(width: 10,),
                            Text("No Prepayment Fees", style: TextStyle(wordSpacing: 1,fontSize: 18),),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(right: 2),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.2),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 40, width: 40, child: Image.asset(Assets.imageTwo, color: Colors.white, fit: BoxFit.cover,),),
                            SizedBox(width: 20,),
                            Text("Flexible payments", style: TextStyle(wordSpacing: 1,fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 2),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        alignment: Alignment.center,
                        color: Colors.grey.withOpacity(0.2),
                        height: 80,
                        child: Text(""),
                      ),
                    ),
                  ],
                ),
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
              child: Image.asset(Assets.img1, fit: BoxFit.cover,),
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
                              TextSpan(text: "Building a ", style: TextStyle(fontWeight: FontWeight.bold) ),
                              TextSpan(text: "brighter ", style: TextStyle(color: Color(0xffff5854))),
                              TextSpan(text: "financial "),
                              TextSpan(text: "future", style: TextStyle(color: Color(0xffff5854))),
                            ]
                        ),
                      ),
                      UnderLineWidget(underlineColor: Colors.white,height: 2,),
                      SizedBox(height: 10,),
                      CustomElevatedButton(onPressed: (){Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                      Navigator.of(context).pushNamed('/apply-now');}, child: "GET LOAN")
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
      if(constraints.maxWidth > Constants.desktop_view-300) {
        return Stack  (
          children: [
            Container(
              height: 700,
              width: constraints.maxWidth/2,
              child: Image.asset(Assets.imageFrame2, fit: BoxFit.cover, color: Colors.transparent.withOpacity(0.1),),
            ),
            Stack(
              children: [
                Container(
                  height: 400,
                    width: 400,
                    margin: EdgeInsets.all(100),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xfffea060), width: 10),
                    ),),
                Positioned(
                    top:140,
                    left: 140,
                    child: Container(
                        height:400,
                        width:400,
                        child: Image.asset(Assets.secondWidgetImage, fit: BoxFit.cover,)
                    )
                ),
                Positioned(
                    bottom: 20,
                    right: 20,
                    child: VisibilityDetector(
                      key: UniqueKey(),
                      onVisibilityChanged: (info) {
                        if(info.visibleFraction > 0.8){
                          _controller.forward();
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                        width: constraints.maxWidth * 0.30,
                        color: Color(0xff323232),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(alignment: Alignment.center,width: 100,child: Text("${_animation.value.toInt()}",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize:70, letterSpacing: 2),)),
                            Expanded(child: Container(width: 60,child: Text("Years of Experience in finance",style: GoogleFonts.mulish(fontWeight: FontWeight.w600, fontSize: 14, wordSpacing: 1))))
                          ],
                        ),
                      ),
                    ))

              ],
            ),
          ],
        );
      } else {
        return Container(
          child: Stack(
            children: [
              Container(
                height: 400,
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
                bottom: 0,
                  left: 0,
                  right: 0,
                  child: VisibilityDetector(
                    key: UniqueKey(),
                    onVisibilityChanged: (info) {
                      if(info.visibleFraction > 0.8){
                        _controller.forward();
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: width/4),
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      width: width * 0.5,
                      color: Colors.black87,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(alignment: Alignment.center,width: width/4.5,child: Text("${_animation.value.toInt()}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 72),)),
                          Expanded(child: Container(width: 60,child: Text("Years of Experience in finance",style: TextStyle(fontWeight: FontWeight.w600, wordSpacing: 1,height: 1.7))))
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
      if(constraints.maxWidth > (Constants.desktop_view - 300)) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("ABOUT COMPANY", style: GoogleFonts.montserrat(color: Color(0xff757575), fontSize: 14, letterSpacing: 1, fontWeight: FontWeight.w500),),
                ],
              ),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                    style: GoogleFonts.montserrat(color: Color(0xff222222), fontSize: 42),
                    children: [
                      TextSpan(text: "Empowering Businesses ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "Through Financial Freedom"),
                    ]
                ),
              ),
              SizedBox(height: 5,),
              UnderLineWidget(height: 3, width: 100,),
              SizedBox(height: 30,),

              Text("We help small businesses navigate the complex world of finance, offering tailor-made loans for every unique enterprise.", style: TextStyle(color: Color(0xff666666), wordSpacing: 1, fontWeight: FontWeight.w700, fontSize: 16),),
              SizedBox(height: 30,),
              Text("In a digitally connected world, social sentiment matters. Our community of satisfied clients speaks volumes about our commitment to your financial growth.", style: TextStyle(color: Colors.black38, wordSpacing: 1, fontSize: 16),),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCircularElevatedButton(
                      child: Icon(Icons.play_arrow_rounded, color: Colors.white, size: 50,),
                      onPressed: () {
                        Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                        Navigator.of(context).pushNamed('/apply-now');
                      }),
                  SizedBox(width: 20,),
                  Text("Apply For The Loan", style: TextStyle(wordSpacing: 1, color: Colors.black, fontSize: 16),)
                ],
              )
            ],
          ),
        );
      } else {
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
                      TextSpan(text: "Empowering Businesses ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "Through Financial Freedom"),
                    ]
                ),
              ),
              SizedBox(height: 5,),
              UnderLineWidget(height: 3, width: 100,),
              SizedBox(height: 30,),

              Text("Your business dreams deserve financial freedom. We offer customized loan solutions to help you reach your goals.", style: TextStyle(color: Colors.black45, wordSpacing: 1, fontWeight: FontWeight.w700),),
              SizedBox(height: 30,),
              Text("Your voice matters. Join our thriving community and let’s build a financially secure future together.", style: TextStyle(color: Colors.black38, wordSpacing: 1),),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCircularElevatedButton(
                      child: Icon(Icons.play_arrow_rounded, color: Colors.white, size: 50,),
                      onPressed: () {
                        Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                        Navigator.of(context).pushNamed('/apply-now');
                      }),
                  SizedBox(width: 20,),
                  Text("Apply For The Loan", style: TextStyle(wordSpacing: 1, color: Colors.black),)
                ],
              )
            ],
          ),
        );
      }
    });
  }
}


class HomeFourWidget extends StatefulWidget {
  const HomeFourWidget({super.key});

  @override
  State<HomeFourWidget> createState() => _HomeFourWidgetState();
}

class _HomeFourWidgetState extends State<HomeFourWidget> {

  CarouselController buttonCarouselController = CarouselController();
  int currentCarouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > Constants.desktop_view) {
          currentCarouselIndex = 0;
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 250.0, vertical: 50),
            color: Color(0xFFF8f8f8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("OUR SERVICES", style: TextStyle(color: Colors.grey, fontSize: 14,wordSpacing: 1, letterSpacing: 2, fontWeight: FontWeight.w500 ),),
                        SizedBox(height: 10,),
                        RichText(
                          text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 38,wordSpacing: 2, letterSpacing: 3 , fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(text: "What We ",style: TextStyle(fontWeight: FontWeight.w700)),
                            TextSpan(text: "Offer for You"),
                          ]
                      ),
                    ),
                    SizedBox(height: 5,),
                    UnderLineWidget(height: 3, width: 100,),
                      ],
                    ),
                    CustomElevatedButton(child: "VIEW ALL", width: 200,onPressed: (){
                      Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(1);
                      Navigator.of(context).pushNamed('/about-loan');
                    }),
                  ],
                ),
                SizedBox(height: 30,),
                SizedBox(height: 15,),

                // add carousel slider
                CarouselSlider(
                    items: [
                      CardContainer(assetName: Assets.iconHandShake, heading: "Business Loan", subHeading: " Empowering your business aspirations with our tailored solutions",),
                      CardContainer(assetName: Assets.iconProperty, heading: "Loan against Property", subHeading: "Unlock the value of your property for a brighter financial future",),
                      CardContainer(assetName: Assets.iconMen, heading: "Personal Loan", subHeading: "Elevating personal dreams with flexible financing options",),
                      CardContainer(assetName: Assets.iconHomeLoan, heading: "Home Loan", subHeading: "Bridging the gap between you and your dream home",),
                      CardContainer(assetName: Assets.iconCar, heading: "Car Loan", subHeading: "Driving your ambitions forward with our easy auto loans",),
                      CardContainer(assetName: Assets.iconHandSafety, heading: "General Insurance", subHeading: "Safeguarding your assets against unforeseen challenges",),
                      CardContainer(assetName: Assets.iconHandHealth, heading: "Health Insurance", subHeading: "Investing in your health, ensuring peace of mind",),
                    ],
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      height: 300,
                      viewportFraction: 0.30,
                      initialPage: 5,
                      enableInfiniteScroll: false,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentCarouselIndex = index ~/ 4;  // integer division
                        });
                      },
                      scrollDirection: Axis.horizontal,
                    )
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DotsIndicator(
                      dotsCount: 3,
                      position: currentCarouselIndex,
                      decorator: DotsDecorator(
                        color: Colors.black, // Inactive color
                        activeColor: Colors.redAccent,
                      ),
                      onTap: (pos) {
                        setState((){
                          currentCarouselIndex = pos;
                          buttonCarouselController.animateToPage(currentCarouselIndex *4 ,
                              duration: Duration(milliseconds: 300), curve: Curves.linear);
                        });
                      },
                    ),
                  ],
                ),

              ],
            ),
          );
        }
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
                CustomElevatedButton(child: "VIEW ALL", onPressed: (){
                  Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(1);
                  Navigator.of(context).pushNamed('/about-loan');
                }),
                SizedBox(height: 15,),

                // add carousel slider
                CarouselSlider(
                    items: [
                      CardContainer(assetName: Assets.iconHandShake, heading: "Business Loan", subHeading: " Empowering your business aspirations with our tailored solutions",),
                      CardContainer(assetName: Assets.iconProperty, heading: "Loan against Property", subHeading: "Unlock the value of your property for a brighter financial future",),
                      CardContainer(assetName: Assets.iconMen, heading: "Personal Loan", subHeading: "Elevating personal dreams with flexible financing options",),
                      CardContainer(assetName: Assets.iconHomeLoan, heading: "Home Loan", subHeading: "Bridging the gap between you and your dream home",),
                      CardContainer(assetName: Assets.iconCar, heading: "Car Loan", subHeading: "Driving your ambitions forward with our easy auto loans",),
                      CardContainer(assetName: Assets.iconHandSafety, heading: "General Insurance", subHeading: "Safeguarding your assets against unforeseen challenges",),
                      CardContainer(assetName: Assets.iconHandHealth, heading: "Health Insurance", subHeading: "Investing in your health, ensuring peace of mind",),
                    ],
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      height: 250,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentCarouselIndex = index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                    )
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DotsIndicator(
                      dotsCount: 9,
                      position: currentCarouselIndex,
                      decorator: DotsDecorator(
                        color: Colors.black, // Inactive color
                        activeColor: Colors.redAccent,
                      ),
                      onTap: (pos) {
                        setState((){
                          currentCarouselIndex = pos;
                          buttonCarouselController.animateToPage(currentCarouselIndex,
                              duration: Duration(milliseconds: 300), curve: Curves.linear);
                        });
                      },
                    ),
                  ],
                ),

              ],
            ),
          );
        }
    },);
  }
}


class CardContainer extends StatefulWidget {
  String assetName;
  String heading;
  String subHeading;

  CardContainer({required this.assetName, required this.heading, required this.subHeading, super.key});

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {

  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if(width > Constants.desktop_view) {
        return InkWell(
          onTapDown: (details) => setState(() {
            isHovering = true;
          }),
          onTapUp: (details) => setState(() {
            isHovering = false;
          }),
          onTapCancel: () => setState(() {
            isHovering = false;
          }),
          child: MouseRegion(
            onEnter: (details){
              setState(() {
                isHovering = true;
              });
            },
            onExit: (details){
              setState(() {
                isHovering = false;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: isHovering ? Colors.redAccent : Colors.white, width: 2, style: BorderStyle.solid))
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox( height: 70, width: 70, child: Image.asset(widget.assetName, color: Colors.deepOrangeAccent),),
                  SizedBox(height: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.heading, style: TextStyle(wordSpacing: 1, color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(height: 10,),
                      Text(widget.subHeading, style: TextStyle(wordSpacing: 1, color: Colors.black45, fontSize: 12),),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        );
      }
      else {
        return InkWell(
          onTapDown: (details) => setState(() {
            isHovering = true;
          }),
          onTapUp: (details) => setState(() {
            isHovering = false;
          }),
          onTapCancel: () => setState(() {
            isHovering = false;
          }),
          child: MouseRegion(
            onEnter: (details){
              setState(() {
                isHovering = true;
              });
            },
            onExit: (details){
              setState(() {
                isHovering = false;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: isHovering ? Colors.redAccent : Colors.white, width: 2, style: BorderStyle.solid))
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox( height: 80, width: 80, child: Image.asset(widget.assetName, color: Colors.deepOrangeAccent),),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.heading, style: TextStyle(wordSpacing: 1, color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),),
                      SizedBox(height: 10,),
                      Text(widget.subHeading, style: TextStyle(wordSpacing: 1, color: Colors.black45, fontSize: 14),),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        );
      }
    },);

  }
}


class HomeFiveWidget extends StatelessWidget {
  const HomeFiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > Constants.desktop_view) {
          return Container(
            width: double.maxFinite,
            // height: 500,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("A QUICK & TRANSPARENT PROCESS",style: TextStyle(color: Colors.black54, wordSpacing: 1,letterSpacing: 1, fontSize: 16),),
                  ],
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: width/3,
                  child: RichText(textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(color: Colors.black,fontSize: 40, letterSpacing: 1, wordSpacing: 1),
                          children: [
                            TextSpan(text: "We have a simple ", style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "online application"),
                          ]
                      )),
                ),
                UnderLineWidget(width: 100, height: 3, ),
                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(flex: 1,child: SizedBox(width: 1000,)),
                      Flexible(
                        flex:2,
                        child: CardWidget(
                          image: Assets.offer8,
                          imageNumberText: "01",
                          heading: "Get a Free Quote",
                          subHeading: "We will customize a loan based on the amount of cash your company need term length",
                        ),
                      ),
                        Flexible(flex: 1,child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(Assets.dottedArrowDown, fit: BoxFit.cover,),
                        ],
                      )),
                      Flexible(
                        flex:2,
                        child: CardWidget(
                          image: Assets.offer2,
                          imageNumberText: "02",
                          heading: "Get an Instant Decision",
                          subHeading: "We provide online instant cash loans with quick approval that suits your term length",
                        ),
                      ),
                      Flexible(flex: 1,child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(Assets.dottedArrowUp, fit: BoxFit.cover,),
                        ],
                      )),
                      Flexible(
                        flex:2,
                        child: CardWidget(
                          image: Assets.offer3,
                          imageNumberText: "03",
                          heading: "Get Funding Fast",
                          subHeading: "When you have a good credit profile and you have built your loan cheaper with us",
                        ),
                      ),
                      Flexible(flex: 1,child: SizedBox(width: 1000,)),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        else {
          return Container(
            width: double.maxFinite,
            // height: 500,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("A QUICK & TRANSPARENT PROCESS",style: TextStyle(color: Colors.black54),),
                  ],
                ),
                SizedBox(height: 10,),
                RichText(textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(color: Colors.black,fontSize: 28),
                        children: [
                          TextSpan(text: "We have a simple ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "online application"),
                        ]
                    )),
                UnderLineWidget(width: 100, height: 3, ),
                SizedBox(height: 50,),

                CardWidget(
                  image: Assets.offer8,
                  imageNumberText: "01",
                  heading: "Get a Free Quote",
                  subHeading: "We will customize a loan based on the amount of cash your company need term length",
                ),
                CardWidget(
                  image: Assets.offer2,
                  imageNumberText: "02",
                  heading: "Get an Instant Decision",
                  subHeading: "We provide online instant cash loans with quick approval that suits your term length",
                ),
                CardWidget(
                  image: Assets.offer3,
                  imageNumberText: "03",
                  heading: "Get Funding Fast",
                  subHeading: "When you have a good credit profile and you have built your loan cheaper with us",
                ),
              ],
            ),
          );
        }

      }
    );
  }

  // Widget _card({required String image, required String imageNumberText, required String heading, required String subHeading}) {
  //   return Container(
  //     margin: EdgeInsets.only(bottom: 50),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //
  //         Stack(
  //           children: [
  //             Container(decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //               border: Border.all(color: Colors.black12,)
  //             ),
  //             width: 120,
  //             height: 120,
  //             child: ClipOval(
  //               child: Padding(
  //                 padding: const EdgeInsets.all(15.0),
  //                 child: Image.asset( image, fit: BoxFit.contain, color: Colors.deepOrange,),
  //               ),
  //             ),),
  //
  //             Positioned(
  //               top: 0,
  //                 right: 0,
  //                 child: Container(
  //                   padding: EdgeInsets.all(5),
  //               decoration: BoxDecoration(
  //                 color: Colors.black,
  //                   shape: BoxShape.circle,
  //                   border: Border.all(color: Colors.black12,)
  //               ),
  //               width: 30,
  //               height: 30,
  //                   child: Text(imageNumberText),
  //             ))
  //           ],
  //         ),
  //         SizedBox(height: 30,),
  //         Text(heading, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, wordSpacing: 1, fontSize: 20),),
  //         SizedBox(height: 20,),
  //         RichText(textAlign: TextAlign.center,text: TextSpan(text: subHeading, style: TextStyle(color: Colors.black54, wordSpacing: 1, fontSize: 15)),),
  //       ],
  //     ),
  //   );
  // }
}


class CardWidget extends StatelessWidget {
  final String image;
  final String imageNumberText;
  final String heading;
  final String subHeading;

  CardWidget({
    required this.image,
    required this.imageNumberText,
    required this.heading,
    required this.subHeading,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if(width > Constants.desktop_view) {
          return Container(
            margin: EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black12,
                        ),
                      ),
                      width: 120,
                      height: 120,
                      child: ClipOval(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            image,
                            fit: BoxFit.contain,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black12,
                          ),
                        ),
                        width: 30,
                        height: 30,
                        child: Text(imageNumberText),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  heading,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: subHeading,
                    style: TextStyle(
                      color: Colors.black54,
                      wordSpacing: 1,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        else {
          return Container(
            margin: EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black12,
                        ),
                      ),
                      width: 120,
                      height: 120,
                      child: ClipOval(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            image,
                            fit: BoxFit.contain,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black12,
                          ),
                        ),
                        width: 30,
                        height: 30,
                        child: Text(imageNumberText),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  heading,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: subHeading,
                    style: TextStyle(
                      color: Colors.black54,
                      wordSpacing: 1,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          );
        }

      }
    );
  }
}


class HomeSixWidget extends StatefulWidget {
  const HomeSixWidget({super.key});

  @override
  State<HomeSixWidget> createState() => _HomeSixWidgetState();
}

class _HomeSixWidgetState extends State<HomeSixWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width/15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(color: Colors.black,fontSize: 40, letterSpacing: 1, wordSpacing: 1),
                  children: [
                    TextSpan(text: "Our "),
                    TextSpan(text: "Partners", style: TextStyle(fontWeight: FontWeight.bold)),
                  ]
              )),

          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(milliseconds: 1500), // Very short interval
              autoPlayAnimationDuration: Duration(milliseconds: 1500), // Very short duration
              autoPlayCurve: Curves.linear,
              scrollDirection: Axis.horizontal,
              viewportFraction: width>1200 ? 0.2 : 0.5, // Adjust based on your needs
              height: width > 1200 ? 150 : 80
            ),
            // items: List.generate(10, (index) => Image.asset(Assets.iconMen))

              items: [
                Image.asset(Assets.b1),
                Image.asset(Assets.b2),
                Image.asset(Assets.b3),
                Image.asset(Assets.b4),
                Image.asset(Assets.b5),
                Image.asset(Assets.b6),
                Image.asset(Assets.b7),
                Image.asset(Assets.b8),
                Image.asset(Assets.b9),
                Image.asset(Assets.b10),
                Image.asset(Assets.b11),
                Image.asset(Assets.b12),
                Image.asset(Assets.b13),
                Image.asset(Assets.b14),
                Image.asset(Assets.b15),
                Image.asset(Assets.b16),
              ]
          ),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
