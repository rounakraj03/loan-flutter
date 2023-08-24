import 'package:flutter/material.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';


class UnderLineWidget extends StatelessWidget {
  Color? underlineColor;
  double? height;
  UnderLineWidget({super.key, this.underlineColor, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: height ?? 1,
      width: 50,
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
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(flex:1,child: Image.asset(Assets.logo)),
                              Flexible(flex:1,child: Text("MyPaisaBazaar", style: TextStyle(fontWeight: FontWeight.bold),))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("COMPANY", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                                UnderLineWidget(),

                                SizedBox(height: 40,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> About Us", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Company", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Privacy Policy", style: TextStyle(color: Colors.white70),)
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Privacy Policy", style: TextStyle(color: Colors.white70),)
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ABOUT", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                                UnderLineWidget(),

                                SizedBox(height: 40,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Business Insurance", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Fund Management", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Stock Custodian", style: TextStyle(color: Colors.white70),)
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Business Management", style: TextStyle(color: Colors.white70),)
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("RESOURCES", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                                UnderLineWidget(),

                                SizedBox(height: 40,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Personal Loan", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Home Loan", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Car Loan", style: TextStyle(color: Colors.white70),)
                                ),
                                SizedBox(height: 20,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> Business Loan", style: TextStyle(color: Colors.white70,),)
                                ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(flex: 1, child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Text("Copyright © 2019 All Rights Reserved.", style: TextStyle(color: Colors.white70),)),
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
                                    onTapDown: (details){},
                                    child: Text("> Work With us", style: TextStyle(color: Colors.white70))
                                ),
                                SizedBox(height: 15,),
                                InkWell(
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTapDown: (details){},
                                    child: Text("> needhelp@mentry.com", style: TextStyle(color: Colors.white70))
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
                                        padding: EdgeInsets.all(5),
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
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 100,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Flexible(flex:1,child: Image.asset(Assets.logo)),
                       Flexible(flex:1,child: Text("MyPaisaBazaar", style: TextStyle(fontWeight: FontWeight.bold),))
                     ],
                   ),
                 ),
                 SizedBox(height: 50,),
                 Text("COMPANY", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                 UnderLineWidget(),

                 SizedBox(height: 40,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> About Us", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Company", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Privacy Policy", style: TextStyle(color: Colors.white70),)
                 ),
                 SizedBox(height: 50,),
                 Text("ABOUT", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                 UnderLineWidget(),

                 SizedBox(height: 40,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Business Insurance", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Fund Management", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Stock Custodian", style: TextStyle(color: Colors.white70),)
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Business Management", style: TextStyle(color: Colors.white70),)
                 ),


                 SizedBox(height: 50,),
                 Text("RESOURCES", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                 UnderLineWidget(),

                 SizedBox(height: 40,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Personal Loan", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Home Loan", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Car Loan", style: TextStyle(color: Colors.white70),)
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                   hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Business Loan", style: TextStyle(color: Colors.white70),)
                 ),

                 SizedBox(height: 30,),
                 Divider(color: Colors.white70,height: 1,),
                 SizedBox(height: 50,),

                 Text("Copyright © 2019 All Rights Reserved.", style: TextStyle(color: Colors.white70),),
                 SizedBox(height: 50,),

                 Text("CONTACT US", style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.yellow),
                 UnderLineWidget(),

                 SizedBox(height: 40,),
                 InkWell(
                     hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> Work With us", style: TextStyle(color: Colors.white70))
                 ),
                 SizedBox(height: 20,),
                 InkWell(
                     hoverColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     splashColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTapDown: (details){},
                     child: Text("> needhelp@mentry.com", style: TextStyle(color: Colors.white70))
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
                         padding: EdgeInsets.all(5),
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
                 SizedBox(height: 50,)

               ]
             ),
           ),
         );
        }
    },);
  }
}
