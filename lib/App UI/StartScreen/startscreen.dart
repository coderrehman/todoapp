import 'package:flutter/material.dart';

import '../login&signup&forgetpassScreen/loginscreen.dart';
import '../login&signup&forgetpassScreen/signupscreen.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375,
        height: 812,
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Center(
                  child: Text(
                "Welcome to Todoapp",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 28),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  width: 250,
                  child: Text(
                    "Please login to your account or create new account to continue",
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(
                        color: Color.fromARGB(255, 215, 212, 212),
                        fontSize: 13,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450),
              child: Container(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 15),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(136, 117, 255, 1)),
                      elevation: MaterialStatePropertyAll(2),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromRGBO(136, 117, 255, 1))),
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      "Create account".toUpperCase(),
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w200,
                          fontSize: 15),
                    ),
                    style: ButtonStyle()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
