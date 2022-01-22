// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wave/auth/login.dart';
import 'package:wave/auth/sign_up.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({Key? key}) : super(key: key);

  @override
  _StartUpScreenState createState() => _StartUpScreenState();
}

const images = [
  "assets/images/1am.png",
  "assets/images/archive.png",
  "assets/images/blush.png",
  "assets/images/coffee.png",
  "assets/images/drive.png",
  "assets/images/email.png",
  "assets/images/enora.png",
  "assets/images/garyvee.png",
  "assets/images/greek.png",
  "assets/images/heavyweight.png",
];

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/unfiltered.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          GridView.builder(
              itemCount: images.length,
              gridDelegate:

                  // crossAxisCount stands for number of columns you want for displaying
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                // return your grid widget here, like how your images will be displayed
                return Image.asset(
                  images[index],
                );
              }),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: const [
                  0.1,
                  0.4,
                  0.6,
                  0.9,
                ],
                colors: const [
                  Colors.black87,
                  Colors.black87,
                  Colors.black,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: SvgPicture.asset(
                    'assets/svgs/Logo.svg',
                    height: 40,
                    width: 40,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'WAVE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 10,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Premium Podcasts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    'Relax and stream episodes from your favorite shows. Unlimited access to over 700,000 shows.',
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 19,
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 130,
                ),
                ElevatedButton(
                  child: SizedBox(
                      width: 320,
                      child: ListTile(
                        leading: SvgPicture.asset('assets/svgs/google.svg',
                            semanticsLabel: 'Google'),
                        title: Center(
                          child: Text(
                            'Continue with Google',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        trailing: Container(
                          width: 10,
                        ),
                      )),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    primary: Colors.white,
                    minimumSize: const Size(
                      310,
                      50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: ElevatedButton(
                    child: SizedBox(
                        width: 320,
                        child: ListTile(
                          title: Center(
                            child: Text(
                              'Sign up with Email',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                      primary: Colors.blueAccent,
                      minimumSize: const Size(
                        310,
                        50,
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  child: Text(
                    "Login",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      width: 0.7,
                      color: Colors.transparent,
                    ),
                    minimumSize: const Size(
                      170,
                      45,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
