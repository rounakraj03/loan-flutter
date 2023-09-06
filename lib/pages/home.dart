import 'package:flutter/material.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/widgets/emi_calculator.dart';
import 'package:flutter_loan/widgets/footer.dart';
import 'package:flutter_loan/widgets/homeWidgets.dart';
import 'package:flutter_loan/widgets/navbar.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  late AnimationController _controller;
  late AnimationController _controller2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 2500));
    _controller2 = AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
  }



  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<NavBarProvider>(
        builder: (_, provider, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                NavBarWidget(),
                
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        HomeOneWidget(),
                        (size.width > Constants.desktop_view) ?
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(flex:1,child: VisibilityDetector(
                                key: Key("SlideLeftAndRight"),
                                onVisibilityChanged: (info) {
                                  if(info.visibleFraction > 0.8){
                                    _controller.forward();
                                  }
                                },
                                child: SlideTransition(
                                    position: Tween<Offset>(
                                      begin: Offset(-1, 0),
                                      end: Offset(0, 0),
                                    ).animate(CurvedAnimation(
                                      parent: _controller,
                                      curve: Curves.easeInOut,
                                    )),
                                    child: HomeTwoWidget()),
                              )),
                              SizedBox(width: 10,),
                              Flexible(flex:1,child: SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1, 0),
                                    end: Offset(0, 0),
                                  ).animate(CurvedAnimation(
                                    parent: _controller,
                                    curve: Curves.easeInOut,
                                  )),
                                  child: HomeThreeWidget())),
                            ],
                          ) : Column(
                          children: [
                            HomeFourWidget(),
                            VisibilityDetector(
                              key: Key("SlideLeftAndRight2"),
                              onVisibilityChanged: (info) {
                                if(info.visibleFraction > 0.8){
                                  _controller2.forward();
                                }
                              },
                              child: SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(-1, 0),
                                    end: Offset(0, 0),
                                  ).animate(CurvedAnimation(
                                    parent: _controller2,
                                    curve: Curves.easeInOut,
                                  )),child: HomeTwoWidget()),
                            ),
                            SizedBox(height: 30,),
                            VisibilityDetector(
                              key: Key("SlideLeftAndRight3"),
                              onVisibilityChanged: (info) {
                                if(info.visibleFraction > 0.8){
                                  _controller2.forward();
                                }
                              },
                              child: SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1, 0),
                                    end: Offset(0, 0),
                                  ).animate(CurvedAnimation(
                                    parent: _controller2,
                                    curve: Curves.easeInOut,
                                  )),child: HomeThreeWidget()),
                            ),
                          ],
                        ),
                        (size.width > Constants.desktop_view) ? HomeFourWidget()  : SizedBox(height: 10),
                        EmiCalculatorWidget(),
                        HomeFiveWidget(),
                        HomeSixWidget(),
                        Footer()

                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
  }
}


