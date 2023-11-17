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
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Color.fromRGBO(54, 54, 54, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 25),
                              child: Text(
                                "Add Task",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                              ),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 20),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.timer,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Icon(
                                      Icons.bookmark,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Icon(
                                      Icons.flag,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 165,
                              ),
                              child: Icon(
                                Icons.send_sharp,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                });
          },
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
                margin: EdgeInsets.only(left: 73),
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
              ),
            ]),
          ),
        ));
  }
}
