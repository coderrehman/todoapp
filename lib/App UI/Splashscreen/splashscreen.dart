import 'package:flutter/material.dart';
import 'package:todoapp/App%20UI/OnboardingScreens/Onboarding.dart';

class SplashScreenOfApp extends StatefulWidget {
  const SplashScreenOfApp({super.key});

  @override
  State<SplashScreenOfApp> createState() => _SplashScreenOfAppState();
}

class _SplashScreenOfAppState extends State<SplashScreenOfApp> {
  @override
  void initState() {
    super.initState();
    splashscreen();
  }

  splashscreen() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 375,
      height: 812,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFF121212)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(children: [
              Image(
                image: AssetImage("assets/images/splashscreen/Vector.png"),
                height: 150,
              ),
              Text(
                "To Do App",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ],
      ),
    ));
  }
}
