// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/utils/routes.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome to CV Builder",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () async {
              //
              setState(() {
                changeButton = true;
              });
              await Future.delayed(Duration(seconds: 5));
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: AnimatedContainer(
                duration: Duration(seconds: 3),
                height: 50,
                width: changeButton ? 50 : 150,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(Icons.done, color: Colors.white)
                    : Text(
                        "Create Resume",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius:
                        BorderRadius.circular(changeButton ? 50 : 8))),
          ),
        ])));
  }
}
