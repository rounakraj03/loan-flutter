import 'package:flutter/material.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';


class UnderLineWidget extends StatelessWidget {
  Color? underlineColor;
  double? height;
  double? width;
  UnderLineWidget({super.key, this.underlineColor, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: height ?? 1,
      width: width ?? 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: underlineColor ?? Colors.redAccent),);
  }
}



class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > Constants.desktop_view) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: width/10, vertical: 70),
            color: Color(0xFF323232),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 1,
                        child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTapDown: (details){
                              Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(0);
                              Navigator.of(context).pushNamed('/home');
                              },
                            child: Image.asset(Assets.logo2)),
                      ),
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("HOME", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                                UnderLineWidget(),

                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){
                                      Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(0);
                                      Navigator.of(context).pushNamed('/home');},
                                    child: Text("> Home", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){
                                      Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(3);
                                    Navigator.of(context).pushNamed('/faq');},
                                    child: Text("> FAQs", style: TextStyle(color: Colors.white70),)
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          flex:2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("APPLY FOR LOAN", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                                    UnderLineWidget(),

                                    SizedBox(height: 20,),
                                    InkWell(
                                        hoverColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTapDown: (details){
                                          Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                                          Navigator.of(context).pushNamed('/apply-now');},
                                        child: Text("> Apply Now", style: TextStyle(color: Colors.white70))
                                    ),
                                    SizedBox(height: 20,),
                                    InkWell(
                                        hoverColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTapDown: (details){
                                          Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(4);
                                          Navigator.of(context).pushNamed('/contact');},
                                        child: Text("> Contact Us", style: TextStyle(color: Colors.white70),)
                                    ),
                                  ],
                                ),
                            ]
                          ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ABOUT LOANS", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                                UnderLineWidget(),

                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){
                                      Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(1);
                                      Navigator.of(context).pushNamed('/about-loan');},
                                    child: Text("> About Loan", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 40,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30,),
                  Divider(color: Colors.white70,height: 1,),
                  SizedBox(height: 50,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(flex: 1, child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Text("Copyright © 2023 All Rights Reserved.", style: TextStyle(color: Colors.white70),)),
                        ],
                      )),

                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("CONTACT US", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                                UnderLineWidget(),

                                SizedBox(height: 25,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){launchUrl(Uri.parse("tel:+919899337767"));},
                                    child: Text("> +91 98993 37767", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 15,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){launchUrl(Uri.parse("mailto:mypaisahub@gmail.com"));},
                                    child: Text("> mypaisahub@gmail.com", style: TextStyle(color: Colors.white70))
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),


                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("FOLLOW US", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                                UnderLineWidget(),

                                SizedBox(height: 25,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      highlightColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      onTapDown: (details) {},
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.black54,
                                        ),
                                        height: 50,
                                        width: 50,
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(Assets.facebookLogo, color: Colors.white,),
                                      ),
                                    ),
                                    InkWell(
                                      highlightColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      onTapDown: (details) {},
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.black54,
                                        ),
                                        height: 50,
                                        width: 50,
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset(Assets.instaLogo, color: Colors.white,),
                                      ),
                                    ),
                                    InkWell(
                                      highlightColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      onTapDown: (details) {},
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.black54,
                                        ),
                                        height: 50,
                                        width: 50,
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset(Assets.twitterLogo, color: Colors.white,),
                                      ),
                                    ),
                                    InkWell(
                                      highlightColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      onTapDown: (details) {},
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.black54,
                                        ),
                                        height: 50,
                                        width: 50,
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset(Assets.youtubeLogo, color: Colors.white,),
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 70,)

                ]
            ),
          );
        } else {
         return Container(
           color: Color(0xFF323232),
           child: Padding(
             padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 100,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Flexible(flex:1,child: InkWell(
                           hoverColor: Colors.transparent,
                           focusColor: Colors.transparent,
                           splashColor: Colors.transparent,
                           highlightColor: Colors.transparent,
                           onTapDown: (details){
                             Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(0);
                             Navigator.of(context).pushNamed('/home');
                           },child: Image.asset(Assets.logo2))),
                      //  Flexible(flex:1,child: Text("MyPaisaBazaar", style: TextStyle(fontWeight: FontWeight.bold),))
                     ],
                   ),
                 ),
                 SizedBox(height: 50,),
                 Text("HOME", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                 UnderLineWidget(),

                 SizedBox(height: 30,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){
                       Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(0);
                       Navigator.of(context).pushNamed('/home');
                     },
                     child: Text("> Home", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){
                     Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(3);
                     Navigator.of(context).pushNamed('/faq');},
                     child: Text("> FAQs", style: TextStyle(color: Colors.white70),)
                 ),


                 SizedBox(height: 50,),
                 Text("APPLY FOR LOAN", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                 UnderLineWidget(),

                 SizedBox(height: 30,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){
                       Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                       Navigator.of(context).pushNamed('/apply-now');},
                     child: Text("> Apply Now", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){
                     Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(4);
                     Navigator.of(context).pushNamed('/contact');},
                     child: Text("> Contact Us", style: TextStyle(color: Colors.white70),)
                 ),
               
                 SizedBox(height: 50,),
                 Text("ABOUT LOANS", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                 UnderLineWidget(),

                 SizedBox(height: 30,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){Navigator.of(context).pushNamed('/about-loan');},
                     child: Text("> About Loan", style: TextStyle(color: Colors.white70))
                 ),
                 
                 SizedBox(height: 30,),
                 Divider(color: Colors.white70,height: 1,),
                 SizedBox(height: 50,),

                 Text("Copyright © 2023 All Rights Reserved.", style: TextStyle(color: Colors.white70),),
                 SizedBox(height: 50,),

                 Text("CONTACT US", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                 UnderLineWidget(),

                 SizedBox(height: 40,),
                 InkWell(
                     hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){launchUrl(Uri.parse("tel:+919899337767"));},
                     child: Text("> +91 98993 37767", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                     hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){launchUrl(Uri.parse("mailto:mypaisahub@gmail.com"));},
                     child: Text("> mypaisahub@gmail.com", style: TextStyle(color: Colors.white70))
                 ),


                 SizedBox(height: 50,),
                 Text("FOLLOW US", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                 UnderLineWidget(),

                 SizedBox(height: 30,),
                 Row(
                   children: [
                     InkWell(
                       highlightColor: Colors.transparent,
                       hoverColor: Colors.transparent,
                       splashColor: Colors.transparent,
                       focusColor: Colors.transparent,
                       onTapDown: (details) {},
                       child: Container(
                         margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.black54,
                         ),
                         height: 50,
                         width: 50,
                         padding: EdgeInsets.all(12),
                         child: Image.asset(Assets.facebookLogo, color: Colors.white,),
                       ),
                     ),
                     InkWell(
                       highlightColor: Colors.transparent,
                       hoverColor: Colors.transparent,
                       splashColor: Colors.transparent,
                       focusColor: Colors.transparent,
                       onTapDown: (details) {},
                       child: Container(
                         margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.black54,
                         ),
                         height: 50,
                         width: 50,
                         padding: EdgeInsets.all(12),
                         child: Image.asset(Assets.instaLogo, color: Colors.white,),
                       ),
                     ),
                     InkWell(
                       highlightColor: Colors.transparent,
                       hoverColor: Colors.transparent,
                       splashColor: Colors.transparent,
                       focusColor: Colors.transparent,
                       onTapDown: (details) {},
                       child: Container(
                         margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.black54,
                         ),
                         height: 50,
                         width: 50,
                         padding: EdgeInsets.all(12),
                         child: Image.asset(Assets.twitterLogo, color: Colors.white,),
                       ),
                     ),
                     InkWell(
                       highlightColor: Colors.transparent,
                       hoverColor: Colors.transparent,
                       splashColor: Colors.transparent,
                       focusColor: Colors.transparent,
                       onTapDown: (details) {},
                       child: Container(
                         margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.black54,
                         ),
                         height: 50,
                         width: 50,
                         padding: EdgeInsets.all(12),
                         child: Image.asset(Assets.youtubeLogo, color: Colors.white,),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 50,)

               ]
             ),
           ),
         );
        }
    },);
  }
}
