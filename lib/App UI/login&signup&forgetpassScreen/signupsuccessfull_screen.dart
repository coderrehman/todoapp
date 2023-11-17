import 'package:flutter/material.dart';

import '../indexscreen/indexscreen.dart';

class Signup_successfull_screen extends StatelessWidget {
  const Signup_successfull_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 400),
                  child: Text(
                    " Signup Successfull",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IndexScreen()));
                    },
                    child: Text(
                      "click to continue",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
