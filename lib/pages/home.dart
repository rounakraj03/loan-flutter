import 'package:flutter/material.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/widgets/emi_calculator.dart';
import 'package:flutter_loan/widgets/footer.dart';
import 'package:flutter_loan/widgets/homeWidgets.dart';
import 'package:flutter_loan/widgets/navbar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
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
                              Flexible(flex:1,child: HomeTwoWidget()),
                              SizedBox(width: 10,),
                              Flexible(flex:1,child: HomeThreeWidget()),
                            ],
                          ) : Column(
                          children: [
                            HomeTwoWidget(),
                            SizedBox(height: 30,),
                            HomeThreeWidget(),
                          ],
                        ),
                        HomeFourWidget(),
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


