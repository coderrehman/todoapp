import 'package:flutter/material.dart';
import 'package:todoapp/constants/onboardingconstants.dart';

import '../StartScreen/startscreen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentindex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
          children: [
            Expanded(
              child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (int index) {
                    setState(() {
                      currentindex = index;
                    });
                  },
                  itemCount: onboardingconslist.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Image(
                                image: AssetImage(
                                    "${onboardingconslist[index].imgurl}"))),
                        SizedBox(
                          height: 40,
                        ),
                        Text("${onboardingconslist[index].onboardingtext}",
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "${onboardingconslist[index].onboardingdiscription}",
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                height: 2.3,
                                wordSpacing: 0.5),
                            maxLines: 3,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(onboardingconslist.length,
                  (index) => buildDot(index, context)),
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white24),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {
                        if (currentindex == onboardingconslist.length - 1) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Startscreen()));
                        }
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear);
                      },
                      child: Text(currentindex == onboardingconslist.length - 1
                          ? "continue"
                          : "next"))),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7,
      width: currentindex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white,
      ),
    );
  }
}
