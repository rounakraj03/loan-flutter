import 'package:flutter/material.dart';
import 'package:flutter_loan/data/about_loan_data.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_constants.dart';
import 'package:flutter_loan/res/assets.dart';
import 'package:flutter_loan/res/validator.dart';
import 'package:flutter_loan/widgets/contactUsWidgets.dart';
import 'package:flutter_loan/widgets/customElevatedButton.dart';
import 'package:flutter_loan/widgets/footer.dart';
import 'package:flutter_loan/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutLoanPage extends StatefulWidget {
  final int? selectedNumber;
  const AboutLoanPage({this.selectedNumber, super.key});

  @override
  State<AboutLoanPage> createState() => _AboutLoanPageState();
}

class _AboutLoanPageState extends State<AboutLoanPage> with SingleTickerProviderStateMixin{

  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;


  late int selectedIndex;
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  final aboutLoanFormKey = GlobalKey<FormState>();

  final scrollController = ScrollController();


  @override
  void initState() {
    setState(() {
      selectedIndex  = widget.selectedNumber ?? 0;
    });

    _controller = AnimationController(
      duration: Duration(milliseconds:4000),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }


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
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          AspectRatio(
                              aspectRatio:  (size.width > Constants.desktop_view) ? 16/9 : 16/25,
                              child: Image.asset(Assets.img2, fit: BoxFit.cover,)),

                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: size.width/10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Loan", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  50 : 30, fontWeight: FontWeight.w700),),
                                Text("My Paisa Hub - Loan", style: GoogleFonts.mulish(color: Colors.redAccent, fontSize:(size.width > Constants.desktop_view) ?  15 : 12, fontWeight: FontWeight.w600),)
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 30,),

                    LayoutBuilder(
                      builder: (context, constraints) {
                        if(size.width > 1000) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: size.width/10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        color: Colors.grey.shade100,
                                        child: Container(
                                          color: Colors.white,
                                          child: Column(
                                              children: List.generate(AboutLoanData.aboutLoanData.length, (index) => InkWell(
                                                onTapDown: (details) => setState(() {selectedIndex = index; _controller.forward(from: 0.0);}),
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
                                      SizedBox(height: 30,),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          color: Colors.grey.shade100,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                                                  color: Colors.white,
                                                  child: Form(
                                                    key: aboutLoanFormKey,
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children:[
                                                          Text("Book An Appointment", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 22, wordSpacing: 1),),
                                                          UnderLineWidget(),

                                                          SizedBox(height: 10,),
                                                          FtTextField(
                                                            controller: nameController,
                                                            hint: "Your Name",
                                                            inputType: TextInputType.name,
                                                            validatorType: ValidatorType.validateNotNull,
                                                          ),
                                                          SizedBox(height: 5,),
                                                          FtTextField(
                                                            controller: phoneController,
                                                            hint: "Your Phone",
                                                            inputType: TextInputType.number,
                                                            validatorType: ValidatorType.validateNotNull,
                                                          ),
                                                          SizedBox(height: 5,),
                                                          FtTextField(
                                                            controller: emailController,
                                                            hint: "Your Email",
                                                            inputType: TextInputType.emailAddress,
                                                            validatorType: ValidatorType.validateEmail,
                                                          ),

                                                        ]
                                                    ),
                                                  )
                                              ),
                                              SizedBox(height: 20,),
                                              CustomElevatedButton(
                                                child: "SEND MESSAGE",
                                                onPressed: () {
                                                  if(aboutLoanFormKey.currentState!.validate()){}
                                                }, width: 150, )
                                            ],
                                          )
                                      )

                                    ],
                                  ),
                                ),
                                SizedBox(width: 80,),
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // alignment: Alignment.topCenter,
                                          color: Colors.white,
                                          height: 500,
                                          width: 1000,
                                          // width: double.maxFinite,
                                          child: Image.asset(AboutLoanData.aboutLoanData[selectedIndex][1], fit: BoxFit.cover,)),
                                      FadeTransition(
                                        opacity: _fadeAnimation,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 30,),
                                            Text(AboutLoanData.aboutLoanData[selectedIndex][0], style: GoogleFonts.poppins(color: Color(0xff222222), fontWeight: FontWeight.bold, fontSize: 32),),
                                            SizedBox(height: 10,),
                                            Text(AboutLoanData.aboutLoanData[selectedIndex][2], style: GoogleFonts.poppins(color: Color(0xff666666), fontSize: 15),)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )


                              ],
                            ),
                          );
                        }
                        else {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: size.width/10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // alignment: Alignment.topCenter,
                                        color: Colors.white,
                                        height: 300,
                                        width: 1000,
                                        // width: double.maxFinite,
                                        child: Image.asset(AboutLoanData.aboutLoanData[selectedIndex][1], fit: BoxFit.cover,)),
                                    SizedBox(height: 30,),
                                    Text(AboutLoanData.aboutLoanData[selectedIndex][0], style: GoogleFonts.poppins(color: Color(0xff222222), fontWeight: FontWeight.bold, fontSize: 32),),
                                    SizedBox(height: 10,),
                                    Text(AboutLoanData.aboutLoanData[selectedIndex][2], style: GoogleFonts.poppins(color: Color(0xff666666), fontSize: 15),)
                                  ],
                                ),
                              SizedBox(height: 50,),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    color: Colors.grey.shade100,
                                    child: Container(
                                      color: Colors.white,
                                      child: Column(
                                          children: List.generate(AboutLoanData.aboutLoanData.length, (index) => InkWell(
                                            onTapDown: (details) => setState(() {
                                              selectedIndex = index;
                                              double positionToScrollTo = size.height -100;
                                              scrollController.animateTo(
                                                positionToScrollTo,
                                                duration: Duration(milliseconds: 300),
                                                curve: Curves.ease,
                                              );
                                            }),
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
                                  SizedBox(height: 30,),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      color: Colors.grey.shade100,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                                              color: Colors.white,
                                              child: Form(
                                                key: aboutLoanFormKey,
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children:[
                                                      Text("Book An Appointment", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 22, wordSpacing: 1),),
                                                      UnderLineWidget(),

                                                      SizedBox(height: 10,),
                                                      FtTextField(
                                                        controller: nameController,
                                                        hint: "Your Name",
                                                        inputType: TextInputType.name,
                                                        validatorType: ValidatorType.validateNotNull,
                                                      ),
                                                      SizedBox(height: 5,),
                                                      FtTextField(
                                                        controller: phoneController,
                                                        hint: "Your Phone",
                                                        inputType: TextInputType.number,
                                                        validatorType: ValidatorType.validateNotNull,
                                                      ),
                                                      SizedBox(height: 5,),
                                                      FtTextField(
                                                        controller: emailController,
                                                        hint: "Your Email",
                                                        inputType: TextInputType.emailAddress,
                                                        validatorType: ValidatorType.validateEmail,
                                                      ),

                                                    ]
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 20,),
                                          CustomElevatedButton(
                                            child: "SEND MESSAGE",
                                            onPressed: () {
                                              if(aboutLoanFormKey.currentState!.validate()){}
                                            }, width: 150, )
                                        ],
                                      )
                                  )

                                ],
                              )


                              ],
                            ),
                          );
                        }

                      }
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
