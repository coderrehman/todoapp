import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 812,
          width: 375,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 120),
                      child: Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 25,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100),
                      child: CircleAvatar(
                        child: Image.asset(
                            "assets/images/indexscreen/profilepic/Ellipse13.png"),
                        radius: 20,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      child: Image(
                          image: AssetImage(
                              "assets/images/indexscreen/Checklist-rafiki 1.png")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "What do you want to do today?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  )
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Tap + to add your tasks",
                    style: TextStyle(
                      color: Color.fromRGBO(109, 108, 108, 1),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  )
                ])
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color.fromRGBO(134, 135, 231, 1),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomSheet: BottomAppBar(
          height: 80,
          color: Color.fromRGBO(54, 54, 54, 1),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 13,
            ),
            child: Row(children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      weight: 10,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Home",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 48),
                child: Column(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                      weight: 10,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Calender", style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 78),
                child: Column(
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      color: Colors.white,
                      weight: 10,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Focus",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 60),
                child: Column(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      color: Colors.white,
                      weight: 10,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
