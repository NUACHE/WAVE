// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wave/core/core_page.dart';

class Saving extends StatefulWidget {
  const Saving({Key? key}) : super(key: key);

  @override
  SavingState createState() {
    return SavingState();
  }
}

class SavingState extends State<Saving> {
  @override
  void initState() {
    super.initState();

    startTime();
  }

  startTime() async {
    var _duration = const Duration(seconds: 3);

    // First time

    return Timer(_duration, navigationPageWel);
  }

  void navigationPageWel() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CorePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
