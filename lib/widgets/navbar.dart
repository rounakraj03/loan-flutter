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
Color selected = Color(0xffffffff);
Color notSelected = Color(0xafffffff);
Color appColor = Color(0xfff9a825);


class NavBarWidget extends StatefulWidget {
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
                color: Color(0xff121212),
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
                              collapsableHeight = 240.0;
                            });
                          } else if (collapsableHeight == 240.0) {
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
                        text: 'Gallery',
                        onTap: () {
                          print("Gallery");
                          Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(1);
                          Navigator.of(context).pushNamed('/gallery');
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 240.0;
                            });
                          } else if (collapsableHeight == 240.0) {
                            setState(() {
                              collapsableHeight = 0.0;
                            });
                          }
                        },
                      ),
                      NavBarItem(
                        number: 2,
                        text: 'About Us',
                        onTap: () {
                          print("About Us");
                          setState(() {
                            Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                            Navigator.of(context).pushNamed('/about');

                          });
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 240.0;
                            });
                          } else if (collapsableHeight == 240.0) {
                            setState(() {
                              collapsableHeight = 0.0;
                            });
                          }

                        },
                      ),
                      NavBarItem(
                        number: 3,
                        text: 'Contact Us',
                        onTap: () {
                          print("Contact Us");
                          Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(3);
                          Navigator.of(context).pushNamed('/contact');
                          if (collapsableHeight == 0.0) {
                            setState(() {
                              collapsableHeight = 240.0;
                            });
                          } else if (collapsableHeight == 240.0) {
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
                color: Color(0xff121212),
                height: 80.0,
                padding: (width > 1000) ? EdgeInsets.only(left: 100,right: 100.0) :  EdgeInsets.only(left: 20,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height:(width > 1000) ? width/29 : width/16,
                        child: InkWell(
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            onTap: (){
                              Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(0);
                              Navigator.of(context).pushNamed('/home');
                            },
                            child: Image.asset(Assets.logo))),
                    LayoutBuilder(builder: (context, constraints) {
                      if (width < 1000.0) {
                        return NavBarButton(
                          onPressed: () {
                            if (collapsableHeight == 0.0) {
                              setState(() {
                                collapsableHeight = 240.0;
                              });
                            } else if (collapsableHeight == 240.0) {
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
                                    backgroundColor: MaterialStatePropertyAll(Colors.yellow.shade800),
                                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.hovered))
                                          return Colors.black; // Text color when button is hovered
                                        return Colors.white;  // Default text color
                                      },
                                    ),
                                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                          (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.hovered))
                                          return Colors.white; //<-- SEE HERE
                                        return null; // Defer to the widget's default.
                                      },
                                    ),)
                                  // ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow.shade800),)
                                  ,onPressed: (){
                                showDialog(
                                  context: context,
                                  barrierColor: Colors.black.withOpacity(0.5),  // This line makes the background fade
                                  builder: (context) => Dialog(
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.yellow[800]!,
                                                    Colors.yellow[800]!,
                                                    Colors.yellow[800]!
                                                  ]
                                              )
                                          ),
                                          width: (MediaQuery.of(context).size.width < 700) ? MediaQuery.of(context).size.width * 1 : 350,  // This line sets the width
                                          child: FormPopup(),
                                        ),
                                        Positioned(
                                            right: 0,
                                            top: 0,
                                            child: IconButton(
                                              icon: Icon(Icons.close, color: Colors.black),  // Close button icon
                                              onPressed: () {
                                                Navigator.of(context).pop();  // Close the dialog when the button is pressed
                                              },
                                            ))
                                      ],
                                    ),
                                  ),
                                );
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
                              text: 'Gallery',
                              onTap: () {
                                print("Gallery");
                                Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(1);
                                Navigator.of(context).pushNamed('/gallery');
                              },
                            ),
                            NavBarItem(
                              number: 2,
                              text: 'About Us',
                              onTap: () {
                                print("About Us");
                                Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(2);
                                Navigator.of(context).pushNamed('/about');
                              },
                            ),
                            NavBarItem(
                              number: 3,
                              text: 'Contact Us',
                              onTap: () {
                                print("Contact Us");
                                Provider.of<NavBarProvider>(context, listen: false).changeNavBarIndexValue(3);
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
            color: Color(0xcfffffff),
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
