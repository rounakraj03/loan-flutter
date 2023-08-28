import 'package:flutter/material.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:google_fonts/google_fonts.dart';


class ContactUsWidgetOne extends StatelessWidget {
  const ContactUsWidgetOne({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = MediaQuery.of(context).size.width;
        return Container(
          color: Colors.white,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Container(
                  padding: EdgeInsets.only(left: width * 0.05, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("COME VISIT US AT", style: TextStyle(color: Color(0xff666666), fontSize: 14, letterSpacing: 1, wordSpacing: 1),),
                      SizedBox(height: 6,),
                      RichText(text: TextSpan(
                          style: GoogleFonts.poppins(wordSpacing: 1, letterSpacing: 1, fontSize: 38),
                          children: [
                            TextSpan(text: "OUR ", style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "ADDRESS"),
                          ]
                      )),
                    ],
                  ),
                ),
              GradientCircularContainer(image: Assets.mapsIcon,heading: "Our Address", subHeading: "2851 Southside Lane, Los Angeles, Ca"),
              GradientCircularContainer(image: Assets.callIcon,heading: "Our Phone Number", subHeading: "+1-323-778-4054"),
              GradientCircularContainer(image: Assets.mailIcon,heading: "Our Email", subHeading: "mentry@example.com"),

            ],
          ),
        );
      }
    );
  }
}

class GradientCircularContainer extends StatelessWidget {
  final String image;
  final String heading;
  final String subHeading;
  const GradientCircularContainer({super.key, required this.image, required this.heading, required this.subHeading});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: width*0.05,),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [Color(0xfffe9f60), Color(0xfffc8761),Color(0xfffb7362)]),
            ),
            padding: EdgeInsets.all(20),
            child: Image.asset(image, fit: BoxFit.cover, color: Colors.white,),
          ),
          SizedBox(width: 30,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              RichText(text: TextSpan(text: heading, style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18, wordSpacing: 1),)  ),
              SizedBox(height: 10,),
              RichText(text: TextSpan(text: subHeading, style:TextStyle(color: Color(0xff8b8b8b), fontSize: 15),))
            ],
          )
        ],
      ),
    );
  }
}
