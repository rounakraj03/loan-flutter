import 'package:flutter/material.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/lets_connect.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/widgets/lets_connect.dart';
import 'package:provider/provider.dart';

double collapsableHeight = 0.0;
// Color selected = Color(0xffffffff);
Color selected = Colors.purple;
// Color notSelected = Color(0xafffffff);
Color notSelected = Colors.black;
Color appColor = Color(0xfff9a825);


class NavBarWidget extends StatefulWidget {
final Color? navBarBackgroundColor;
final Color? navBarTextColor;

  const NavBarWidget({ this.navBarBackgroundColor, this.navBarTextColor });


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<NavBarWidget> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int navBarSelectedItem = Provider.of<NavBarProvider>(context).navBarScreenIndex;
    return Consumer<NavBarProvider>(
        builder: (_, provider, child) {
          return Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              AnimatedContainer(
                margin: EdgeInsets.only(top: 79.0),
                duration: Duration(milliseconds: 375),
                curve: Curves.ease,
                height: (width < 800.0) ? collapsableHeight : 0.0,
                width: double.infinity,
                // color: Color(0xff121212),
                // color: Color(0xff5e92a0),
                color: widget.navBarBackgroundColor ?? Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      NavBarItem(
                        number: 0,
                        text: 'Home',
                        onTap: () {
                          print("Home");
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 300.0;
                            });
                          } else if (collapsableHeight == 300.0) {
                            setState(() {
                              collapsableHeight = 0.0;
                            });
                          }
                          Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(0);
                          Navigator.of(context).pushNamed('/home');
                        },
                      ),
                      NavBarItem(
                        number: 1,
                        text: 'Loans',
                        onTap: () {
                          print("about-loan");
                          Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(1);
                          Navigator.of(context).pushNamed('/about-loan');
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 300.0;
                            });
                          } else if (collapsableHeight == 300.0) {
                            setState(() {
                              collapsableHeight = 0.0;
                            });
                          }
                        },
                      ),
                      NavBarItem(
                        number: 2,
                        text: 'Apply Now',
                        onTap: () {
                          print("apply-now");
                          setState(() {
                            Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                            Navigator.of(context).pushNamed('/apply-now');

                          });
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 300.0;
                            });
                          } else if (collapsableHeight == 300.0) {
                            setState(() {
                              collapsableHeight = 0.0;
                            });
                          }

                        },
                      ),
                      NavBarItem(
                        number: 3,
                        text: 'FAQs',
                        onTap: () {
                          print("FAQs");
                          setState(() {
                            Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(3);
                            Navigator.of(context).pushNamed('/faq');

                          });
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 300.0;
                            });
                          } else if (collapsableHeight == 300.0) {
                            setState(() {
                              collapsableHeight = 0.0;
                            });
                          }

                        },
                      ),
                      NavBarItem(
                        number: 4,
                        text: 'Contact Us',
                        onTap: () {
                          print("Contact Us");
                          Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(4);
                          Navigator.of(context).pushNamed('/contact');
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 300.0;
                            });
                          } else if (collapsableHeight == 300.0) {
                            setState(() {
                              collapsableHeight = 0.0;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // color: Color(0xff5f94a6),
                // color: Color(0xff5e92a0),
                color: widget.navBarBackgroundColor ?? Colors.white,
                // color: Color(0xff5e92a0),
                height: 80.0,
                padding: (width > 1000) ? EdgeInsets.only(left: 100,right: 100.0) :  EdgeInsets.only(left: 20,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height:(width > 1000) ? width/20 : width/8,
                        child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            onTap: (){
                              Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(0);
                              Navigator.of(context).pushNamed('/home');
                            },
                            child: Image.asset(Assets.logo, fit: BoxFit.fitHeight,))),
                    LayoutBuilder(builder: (context, constraints) {
                      if (width < 1100.0) {
                        return NavBarButton(
                          onPressed: () {
                            if (collapsableHeight == 0.0) {
                              setState(() {
                                collapsableHeight = 300.0;
                              });
                            } else if (collapsableHeight == 300.0) {
                              setState(() {
                                collapsableHeight = 0.0;
                              });
                            }
                          },
                        );
                      } else {
                        return Row(
                          children: [
                            ClipRRect(
                              // borderRadius: BorderRadius.circular(40),
                              child: ElevatedButton(
                                  style:ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(Colors.purple),
                                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.hovered))
                                          return Colors.white; // Text color when button is hovered
                                        return Colors.white;  // Default text color
                                      },
                                    ),
                                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                          (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.hovered))
                                          return Color(0xffff5854); //<-- SEE HERE
                                        return null; // Defer to the widget's default.
                                      },
                                    ),)
                                  // ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow.shade800),)
                                  ,
                                  onPressed: (){
                                    Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(4);
                                    Navigator.of(context).pushNamed('/contact');
                              },
                                  child: Text("Lets Connect",style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    // color: Colors.white,
                                  ),)),
                            ),
                            SizedBox(width: 30,),
                            NavBarItem(
                              number: 0,
                              text: 'Home',
                              onTap: () {
                                print("Home");
                                Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(0);
                                Navigator.of(context).pushNamed('/home');
                              },
                            ),
                            NavBarItem(
                              number: 1,
                              text: 'Loans',
                              onTap: () {
                                print("Loans");
                                Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(1);
                                Navigator.of(context).pushNamed('/about-loan');
                              },
                            ),
                            NavBarItem(
                              number: 2,
                              text: 'Apply Now',
                              onTap: () {
                                print("Apply Now");
                                Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                                Navigator.of(context).pushNamed('/apply-now');
                              },
                            ),
                            NavBarItem(
                              number: 3,
                              text: 'FAQs',
                              onTap: () {
                                print("FAQs");
                                Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(3);
                                Navigator.of(context).pushNamed('/faq');
                              },
                            ),
                            NavBarItem(
                              number: 4,
                              text: 'Contact Us',
                              onTap: () {
                                print("Contact Us");
                                Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(4);
                                Navigator.of(context).pushNamed('/contact');
                              },
                            ),
                          ],
                        );
                      }
                    })
                  ],
                ),
              ),
            ],
          );
        }
    );
  }
}

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  NavBarButton({required this.onPressed});

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 60.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xcfffffff),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            setState(() {
              widget.onPressed();
            });
          },
          child: Icon(
            Icons.menu,
            size: 30.0,
            // color: Color(0xcfffffff),
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}


class NavBarItem extends StatefulWidget {
  final String text;
  final int number;
  final VoidCallback onTap;

  NavBarItem({ required this.text, required this.onTap, required this.number});

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;

  @override
  Widget build(BuildContext context) {
    int navBarSelectedItem = Provider.of<NavBarProvider>(context).navBarScreenIndex;
    if(widget.number == navBarSelectedItem ){
      setState(() {
        color = selected;
      });
    }
    return Consumer<NavBarProvider>(
        builder: (_,widgets, child) {
          return MouseRegion(
            onEnter: (value) {
              setState(() {
                color = selected;
              });
            },
            onExit: (value) {
              setState(() {
                if(widget.number != navBarSelectedItem) {
                  color = notSelected;
                }
              });
            },
            child: Material(
              color: Colors.transparent,
              type: MaterialType.transparency,
              child: InkWell(
                // splashColor: Colors.white60,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  widget.onTap();
                },
                child: Container(
                  color: Colors.transparent,
                  height: 60.0,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    widget.text,
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      color: color,
                    ),
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
