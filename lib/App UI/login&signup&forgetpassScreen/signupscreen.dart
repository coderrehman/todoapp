import 'package:flutter/material.dart';

import 'forgetpass_screen.dart';
import 'loginscreen.dart';
import 'signupsuccessfull_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailtextcont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Positioned(
            top: 30,
            child: Center(
              child: Image(
                image: AssetImage("assets/images/splashscreen/Vector.png"),
                height: 200,
                width: 200,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
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
                      hintText: "Email",
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
                      hintText: "Password",
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
                                builder: ((context) =>
                                    Signup_successfull_screen())));
                      },
                      child: Text("Signup",
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
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)))),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPassscreen()));
                  },
                  child: Row(
                    children: [
                      Text(
                        "Forget Pass",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
