import 'package:flutter/material.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/contactUsWidgets.dart';
import 'package:flutter_loan/widgets/footer.dart';
import 'package:flutter_loan/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';



class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return MapSample();
    return Scaffold(
      // backgroundColor: Color(0xfff8f8f8),
      backgroundColor: Colors.white,
      body: Consumer<NavBarProvider>(
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
                            // left: 20,
                            top: 0,
                            bottom: 0,
                            left: size.width/10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Contact Us", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  50 : 30, fontWeight: FontWeight.w700),),
                                Text("Mentry - Contact Us", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  15 : 12, fontWeight: FontWeight.w600),)
                              ],
                            ),
                          )
                        ],
                      ),
                      (size.width > Constants.desktop_view) ?
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(flex:2, child: ContactUsWidgetOne()),
                          SizedBox(width: 20,),
                          Flexible(flex:3, child: ContactUsWidgetTwo()),
                        ],
                      ) :
                      Column(
                        children: [
                          ContactUsWidgetOne(),
                          SizedBox(width: 20,),
                          ContactUsWidgetTwo(),
                        ],
                      ),
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
