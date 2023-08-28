import 'package:flutter/material.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/contactUsWidgets.dart';
import 'package:flutter_loan/widgets/navbar.dart';
import 'package:provider/provider.dart';



class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                      AspectRatio(
                        aspectRatio: 16/6,
                          child: Image.asset(Assets.homeImage, fit: BoxFit.cover,)),
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
                      )
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
