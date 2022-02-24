import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/main.dart';
import 'package:training/screens/main_page.dart';
// ignore: unnecessary_import
import 'package:training/utils/routes.dart';
import 'package:training/screens/resumetwo.dart';

class my_templatesPage extends StatefulWidget {
  const my_templatesPage({Key? key}) : super(key: key);

  @override
  State<my_templatesPage> createState() => _my_templatesPageState();
}

// ignore: camel_case_types
class _my_templatesPageState extends State<my_templatesPage> {
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
          const SizedBox(
            height: 20.0,
          ),
          const Text("Select Template",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () async {
              //
              setState(() {
                changeButton = true;
              });
              await Future.delayed(const Duration(seconds: 5));
              Navigator.pushNamed(context, MyRoutes.ResumeoneRoute);
              setState(() {
                changeButton = false;
              });
            },
            child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 50,
                width: changeButton ? 50 : 150,
                alignment: Alignment.center,
                child: changeButton
                    ? const Icon(Icons.done, color: Colors.white)
                    : const Text(
                        "Template 1",
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
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              //
              setState(() {
                changeButton = true;
              });
              await Future.delayed(const Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.ResumetwoRoute);
              setState(() {
                changeButton = false;
              });
            },
            child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 50,
                width: changeButton ? 50 : 150,
                alignment: Alignment.center,
                child: changeButton
                    ? const Icon(Icons.done, color: Colors.white)
                    : const Text(
                        "Template 2",
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
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              //
              setState(() {
                changeButton = true;
              });
              await Future.delayed(const Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.homeRoute);
              setState(() {
                changeButton = false;
              });
            },
            child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 50,
                width: changeButton ? 50 : 150,
                alignment: Alignment.center,
                child: changeButton
                    ? const Icon(Icons.done, color: Colors.white)
                    : const ListTile(
                        leading: Icon(CupertinoIcons.back),
                        title: Text(
                          'Back',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        )),
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius:
                        BorderRadius.circular(changeButton ? 50 : 8))),
          ),
        ])));
  }
}
