import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kehamilan/ui/login/login.dart';
import 'package:kehamilan/ui/wellcome/wellcome.dart';
import 'package:kehamilan/utils/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    setTimer();
    super.initState();
  }

  void setTimer() {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WellcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Center(
          child: Opacity(
        opacity: 0.8,
        child: Image.asset(
          "asset/image/logo_kehamilan.png",
          width: MediaQuery.of(context).size.width,
          height: 200,
        ),
      )),
    );
  }
}
