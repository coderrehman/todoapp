import 'package:flutter/material.dart';

class introsc1 extends StatelessWidget {
  const introsc1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 375,
      height: 812,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFF121212)),
      child: Stack(
        children: [
          Positioned(
            left: 43,
            top: 467,
            child: Text(
              'Manage your tasks',
              style: TextStyle(
                color: Colors.white.withOpacity(0.8700000047683716),
                fontSize: 32,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 38,
            top: 547,
            child: SizedBox(
              width: 299,
              child: Text(
                'You can easily manage all of your daily tasks in DoMeApp for free',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8700000047683716),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                  wordSpacing: 10,
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 703.5,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey)),
              onPressed: () {},
              child: const Center(
                child: Text(
                  'BACK',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    height: 0.09,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 58,
            child: Text(
              'SKIP',
              style: TextStyle(
                color: Colors.white.withOpacity(0.4399999976158142),
                fontSize: 16,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                height: 0.09,
              ),
            ),
          ),
          Positioned(
            left: 280,
            top: 702.6,
            child: Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 0.09,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 375,
              height: 44,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Positioned(
                    left: 293.67,
                    top: 17.33,
                    child: Container(
                      width: 66.66,
                      height: 11.34,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 42.33,
                            top: 0,
                            child: Container(
                              width: 24.33,
                              height: 11.33,
                              child: Stack(children: []),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 12,
                    child: Container(
                      width: 54,
                      height: 21,
                      padding: const EdgeInsets.only(top: 1),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 54,
                            height: 20,
                            child: Text(
                              '9:41',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 81,
            top: 84,
            child: Container(
              width: 213,
              height: 277.78,
              child: Stack(
                children: [
                  Positioned(
                    left: 83.16,
                    top: 183.82,
                    child: Container(
                      width: 41.17,
                      height: 87.95,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 3.08,
                            top: -9.43,
                            child: Container(
                              width: 34.19,
                              height: 106.80,
                              child: Stack(children: []),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
