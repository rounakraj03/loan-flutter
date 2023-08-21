import 'package:flutter/material.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/widgets/emi_calculator.dart';
import 'package:flutter_loan/widgets/navbar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int navBarSelectedItem = Provider.of<NavBarProvider>(context).navBarScreenIndex;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Consumer<NavBarProvider>(
        builder: (_, provider, child) {
          return Scaffold(
            body: Column(
              children: [
                NavBarWidget(),
                EmiCalculatorWidget()

              ],
            ),
          );
        },
      ),
    );
  }
}


