import 'package:flutter/material.dart';
import 'package:flutter_loan/data/about_loan_data.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/footer.dart';
import 'package:flutter_loan/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutLoanPage extends StatefulWidget {
  const AboutLoanPage({super.key});

  @override
  State<AboutLoanPage> createState() => _AboutLoanPageState();
}

class _AboutLoanPageState extends State<AboutLoanPage> {

  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Consumer<NavBarProvider>(
        builder: (context, value, child) {
          return Column(
            children: [
              NavBarWidget(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          AspectRatio(
                              aspectRatio:  (size.width > Constants.desktop_view) ? 16/9 : 16/25,
                              child: Image.asset(Assets.homeImage, fit: BoxFit.cover,)),

                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: size.width/10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Loan", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  50 : 30, fontWeight: FontWeight.w700),),
                                Text("Mentry - Loan", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  15 : 12, fontWeight: FontWeight.w600),)
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: size.width/10),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.grey.shade200,
                              child: Container(
                                color: Colors.white,
                                child: Column(
                                  children: List.generate(AboutLoanData.aboutLoanData.length, (index) => InkWell(
                                    onTapDown: (details) => setState(() {selectedIndex = index;}),
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: (selectedIndex == index ) ? [Color(0xfffea060), Color(0xfffd8a61),Color(0xfffb6f62)] : [Colors.white, Colors.white, Colors.white],
                                        )
                                      ),
                                      margin: EdgeInsets.all(2),
                                    padding: EdgeInsets.all(15),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(AboutLoanData.aboutLoanData[index][0], style: TextStyle(color: (selectedIndex == index) ? Colors.white : Colors.black, fontWeight: FontWeight.w600),),
                                            Container(padding: EdgeInsets.all(5),decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade100),child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black26, size: 15,))
                                          ],
                                        ) ),
                                  ))
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 5,
                            child: Column(
                              children: [],
                            ),
                          )


                        ],
                      ),
                    ),
                      SizedBox(height: 30,),
                      Footer()
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
