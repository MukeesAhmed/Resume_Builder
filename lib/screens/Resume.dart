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

  // ignore: use_key_in_widget_constructors
  const ResumePage(
      {required this.name,
      required this.email,
      required this.experience,
      required this.education,
      required this.skills,
      required this.reference});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                const Text(
                  'Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(' $name', style: TextStyle(fontSize: 14)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(' $email', style: TextStyle(fontSize: 14)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Education',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(' $education', style: TextStyle(fontSize: 14)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Experience',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(' $experience', style: TextStyle(fontSize: 14)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Skills',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(' $skills'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Reference',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  ' $reference',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
