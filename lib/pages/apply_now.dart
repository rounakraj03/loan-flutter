import 'package:flutter/material.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/applyNowWidgets.dart';
import 'package:flutter_loan/widgets/footer.dart';
import 'package:flutter_loan/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApplyNow extends StatefulWidget {
  const ApplyNow({super.key});

  @override
  State<ApplyNow> createState() => _ApplyNowState();
}

class _ApplyNowState extends State<ApplyNow> {
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
                                  Text("Apply Now", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  50 : 30, fontWeight: FontWeight.w700),),
                                  Text("Mentry - Apply Now", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  15 : 12, fontWeight: FontWeight.w600),)
                                ],
                              ),
                            )
                        ],
                      ),
                      ApplyNowForm(),
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

