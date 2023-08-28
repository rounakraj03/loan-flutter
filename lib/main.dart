import 'package:flutter/material.dart';
import 'package:flutter_loan/pages/contact_us.dart';
import 'package:flutter_loan/pages/home.dart';
import 'package:flutter_loan/providers/nav_bar_provider.dart';
import 'package:flutter_loan/res/app_theme.dart';
import 'package:flutter_loan/res/snackbar.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => NavBarProvider(),)
        ],
      child: MaterialApp(
        title: 'LOAN APP',
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: MessageHandler.scaffoldMessengerKey,
        theme: AppTheme.theme,
        routes: {},
        // home: HomePage(),
        home: ContactUs(),
      ),
    );
  }
}
