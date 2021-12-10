import 'dart:async';
import 'package:portfolio/app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/home'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Just a Sec!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Vx.rose300,
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
            ),
            20.heightBox,
            LinearPercentIndicator(
              alignment: MainAxisAlignment.center,
              width: context.isMobile
                  ? context.screenWidth * 0.8
                  : context.percentWidth * 40,
              animation: true,
              lineHeight: 20,
              animationDuration: 2000,
              percent: 1,
              center: const Text("100%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Vx.rose400,
            ),
          ],
        ),
      ),
    );
  }
}
