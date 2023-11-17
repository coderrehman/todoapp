import 'package:flutter/material.dart';

import 'loginscreen.dart';

class ForgetPassscreen extends StatelessWidget {
  ForgetPassscreen({Key? key}) : super(key: key);

  TextEditingController emailtextcont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 812,
          width: 375,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "New Password",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16, left: 16),
                      child: TextField(
                        controller: emailtextcont,
                        decoration: InputDecoration(
                          hintText: "New Password",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16, left: 16),
                      child: TextField(
                        controller: emailtextcont,
                        decoration: InputDecoration(
                          hintText: "Type Again",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 30,
                      width: 500,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => LoginScreen())));
                          },
                          child: Text("Reset Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => LoginScreen())));
                        },
                        child: Text("Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(129, 128, 132, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)))),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
