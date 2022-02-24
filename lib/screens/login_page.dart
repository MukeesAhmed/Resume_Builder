// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:training/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("Welcome $name",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20.0,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //       vertical: 16.0, horizontal: 32.0),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
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
                                  "login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(
                                  changeButton ? 50 : 8))),
                    )

                    // ElevatedButton(
                    //   onPressed: () {
                    //
                    //   },
                    //   child: Text("Submit"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    // )
                  ],
                ),
                // )
              ]),
            ],
          ),
        ));
  }
}
