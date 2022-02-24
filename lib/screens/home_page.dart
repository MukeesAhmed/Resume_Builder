// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/main.dart';
import 'package:training/utils/routes.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                const SizedBox(
                  height: 20.0,
                ),
                Text("Welcome $name",
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 20.0,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //       vertical: 16.0, horizontal: 32.0),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Text("Name",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                        TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(05.0),
                              hintText: "Enter Name",
                              labelText: "Name"),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(05.0),
                              hintText: "Enter Email",
                              labelText: "Email"),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(05.0),
                              hintText: "Enter Education",
                              labelText: "Education"),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(05.0),
                              hintText: "Enter Experience",
                              labelText: "Experience"),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(05.0),
                              hintText: "Enter Skills",
                              labelText: "Skills"),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(05.0),
                              hintText: "Enter Reference",
                              labelText: "Reference"),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                      ],
                    )),
                // )
              ]),
            ],
          ),
        ));
  }
}
