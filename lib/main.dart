// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/screens/resumetwo.dart';
import 'package:training/utils/routes.dart';
import 'screens/home_page.dart';
import 'screens/main_page.dart';
import 'screens/Resume.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/main",
      routes: {
        //  MyRoutes.signupRoute: (context) => SignUpPage(),
        // MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.mainRoute: (context) => MainPage(),
        MyRoutes.ResumeoneRoute: (context) => ResumePage(
              education: '',
              experience: '',
              email: '',
              name: '',
              reference: '',
              skills: '',
              contact: '',
            ),
        // MyRoutes.myTemplatesRoute: (context) => my_templatesPage(),
        MyRoutes.ResumetwoRoute: (context) => ResumetwoPage(
              education: '',
              experience: '',
              email: '',
              name: '',
              reference: '',
              skills: '',
              contact: '',
            ),
      },
    );
  }
}
