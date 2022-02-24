import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:training/screens/home_page.dart';

class ResumePage extends StatelessWidget {
  final String name;
  final String email;
  final String experience;
  final String education;
  final String skills;
  final String reference;
  final String contact;

  // ignore: use_key_in_widget_constructors
  const ResumePage(
      {required this.name,
      required this.email,
      required this.experience,
      required this.education,
      required this.skills,
      required this.reference,
      required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Resume Version 1.0"),
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(05.0),
                    child: Column(
                      children: [
                        const ListTile(
                            leading: Icon(CupertinoIcons.person),
                            title: Text(
                              'Name',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(' $name', style: TextStyle(fontSize: 12)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: Colors.black),
                        const SizedBox(
                          height: 10,
                        ),
                        const ListTile(
                            leading: Icon(CupertinoIcons.mail),
                            title: Text(
                              'Email',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )),
                        Text(' $email', style: TextStyle(fontSize: 12)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: Colors.black),
                        const SizedBox(
                          height: 10,
                        ),
                        const ListTile(
                            leading: Icon(CupertinoIcons.phone),
                            title: Text(
                              'Contact',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(' $contact', style: TextStyle(fontSize: 12)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: Colors.black),
                        const SizedBox(
                          height: 10,
                        ),
                        const ListTile(
                            leading: Icon(CupertinoIcons.book),
                            title: Text(
                              'Education',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(' $education', style: TextStyle(fontSize: 12)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: Colors.black),
                        const SizedBox(
                          height: 10,
                        ),
                        const ListTile(
                            leading: Icon(CupertinoIcons.building_2_fill),
                            title: Text(
                              'Experience',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(' $experience', style: TextStyle(fontSize: 12)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: Colors.black),
                        const SizedBox(
                          height: 10,
                        ),
                        const ListTile(
                            leading:
                                Icon(CupertinoIcons.circle_bottomthird_split),
                            title: Text(
                              'Skills',
                              //  textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(' $skills', style: TextStyle(fontSize: 12)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: Colors.black),
                        const SizedBox(
                          height: 10,
                        ),
                        const ListTile(
                            leading: Icon(CupertinoIcons.person_2),
                            title: Text(
                              'Reference',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          ' $reference',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: Colors.black),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
