// ignore_for_file: unused_import, unnecessary_new

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/main.dart';
import 'package:training/screens/main_page.dart';
import 'package:training/utils/routes.dart';
import 'package:training/screens/Resume.dart';

// ignore: camel_case_types
class listofvariables {
  final String name;
  final String email;
  final String experience;
  final String education;
  final String skills;
  final String reference;
  final String contact;

  const listofvariables(this.name, this.email, this.experience, this.education,
      this.skills, this.reference, this.contact);
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _experience = new TextEditingController();
  final TextEditingController _education = new TextEditingController();
  final TextEditingController _skills = new TextEditingController();
  final TextEditingController _reference = new TextEditingController();
  final TextEditingController _contact = new TextEditingController();

  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  movetomainpage(BuildContext context) async {
    _formKey.currentState?.validate();
    setState(() {
      changeButton = false;
    });

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ResumePage(
            name: _name.text,
            email: _email.text,
            experience: _experience.text,
            education: _education.text,
            skills: _skills.text,
            reference: _reference.text,
            contact: _contact.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "assets/images/homepage.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),

            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _name,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Enter Name",
                            labelText: "Name"),
                        validator: (value) {
                          if (value == null) {
                            return "Name cannot be empty";
                          }
                          return '';
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: _email,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Enter Email",
                            labelText: "Email"),
                        validator: (value) {
                          if (value == null) {
                            return "Email cannot be empty";
                          }
                          return '';
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: _contact,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Enter Contact",
                            labelText: "Contact"),
                        validator: (value) {
                          if (value == null) {
                            return "Contact cannot be empty";
                          }
                          return '';
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: _education,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Enter Education",
                            labelText: "Education"),
                        validator: (value) {
                          if (value == null) {
                            return "Education cannot be empty";
                          }
                          return '';
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: _experience,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Enter Experience",
                            labelText: "Experience"),
                        validator: (value) {
                          if (value == null) {
                            return "Experience cannot be empty";
                          }
                          return '';
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: _skills,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Enter Skills",
                            labelText: "Skills"),
                        validator: (value) {
                          if (value == null) {
                            return "Skills cannot be empty";
                          }
                          return '';
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: _reference,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: "Enter Reference",
                            labelText: "Reference"),
                        validator: (value) {
                          if (value == null) {
                            return "Reference cannot be empty";
                          }
                          return '';
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () => movetomainpage(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 3),
                          height: 50,
                          width: changeButton ? 50 : 150,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(Icons.done, color: Colors.white)
                              : const Text(
                                  "Submit",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 8)),
                        ),
                      ),
                    ],
                  ),
                )),
            // )
          ]),
        ));
  }
}
