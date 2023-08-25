import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
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

  CarouselController buttonCarouselController = CarouselController();
  int currentCarouselIndex = 0;

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
                      CardContainer(assetName: Assets.offer1, heading: "Business Loan", subHeading: "Strategy experience and analytical expertise combine",),
                      CardContainer(assetName: Assets.offer2, heading: "Commercial Loan", subHeading: "Enable decision making and create Business plan",),
                      CardContainer(assetName: Assets.offer3, heading: "Personal Loan", subHeading: "Capital market perspective to growth business",),
                      CardContainer(assetName: Assets.offer4, heading: "Home Loan", subHeading: "Linking corporate business strategy capital markets",),
                      CardContainer(assetName: Assets.offer5, heading: "Construction Loan", subHeading: "Managing effectively source of competitive advantage",),
                      CardContainer(assetName: Assets.offer6, heading: "Education Loan", subHeading: "Organizing financial strategy competitive business",),
                      CardContainer(assetName: Assets.offer7, heading: "Car Loan", subHeading: "Technology is an integral differentiating competition",),
                      CardContainer(assetName: Assets.offer8, heading: "Investment Loan", subHeading: "Potentially of your business that both influences",),
                      CardContainer(assetName: Assets.offer9, heading: "Goal Loan", subHeading: "Expert analysis provocative points of marketing",),
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
}


class HomeFiveWidget extends StatelessWidget {
  const HomeFiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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

          _card(
            image: Assets.offer8,
            imageNumberText: "01",
            heading: "Get a Free Quote",
            subHeading: "We will customize a loan based on the amount of cash your company need term length",
          ),
          _card(
            image: Assets.offer2,
            imageNumberText: "02",
            heading: "Get an Instant Decision",
            subHeading: "We provide online instant cash loans with quick approval that suits your term length",
          ),
          _card(
            image: Assets.offer3,
            imageNumberText: "03",
            heading: "Get Funding Fast",
            subHeading: "When you have a good credit profile and you have built your loan cheaper with us",
          ),
        ],
      ),
    );
  }

  Widget _card({required String image, required String imageNumberText, required String heading, required String subHeading}) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Stack(
            children: [
              Container(decoration: BoxDecoration(
                  shape: BoxShape.circle,
                border: Border.all(color: Colors.black12,)
              ),
              width: 120,
              height: 120,
              child: ClipOval(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset( image, fit: BoxFit.contain, color: Colors.deepOrange,),
                ),
              ),),

              Positioned(
                top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.black,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12,)
                ),
                width: 30,
                height: 30,
                    child: Text(imageNumberText),
              ))
            ],
          ),
          SizedBox(height: 30,),
          Text(heading, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, wordSpacing: 1, fontSize: 20),),
          SizedBox(height: 20,),
          RichText(textAlign: TextAlign.center,text: TextSpan(text: subHeading, style: TextStyle(color: Colors.black54, wordSpacing: 1, fontSize: 15)),),
        ],
      ),
    );
  }
}
