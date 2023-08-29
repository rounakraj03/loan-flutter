import 'package:flutter/material.dart';
import 'package:flutter_faq/flutter_faq.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/faqWidgets.dart';
import 'package:flutter_loan/widgets/footer.dart';
import 'package:flutter_loan/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}



class _FaqPageState extends State<FaqPage> {
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
                                Text("FAQs", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  50 : 30, fontWeight: FontWeight.w700),),
                                Text("Mentry - FAQs", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  15 : 12, fontWeight: FontWeight.w600),)
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),

                      RichText(
                          text: TextSpan(
                              style: TextStyle(fontSize: 38, fontWeight: FontWeight.w400, color: Color(0xff222222)),
                              children: [
                                TextSpan(text: "Frequently Asked "),
                                TextSpan(text: "Questions", style: TextStyle(fontWeight: FontWeight.bold)),
                              ]
                      )),
                      SizedBox(height: 30,),

                      FaqWidgetsOne(),





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

String data = """"
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""";