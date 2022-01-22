// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wave/core/search.dart';
import 'package:wave/core/widgets/category_row.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Just for you',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 10),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Search(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                playPodcast(
                                  context,
                                  image: 'assets/images/signal.png',
                                  title: 'The Signal',
                                  detail: 'Make Money With Stock Options',
                                );
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.width / 2.4,
                                width: MediaQuery.of(context).size.width / 2.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/signal.png'),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width / 2.4,
                              width: MediaQuery.of(context).size.width / 2.2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 20.0, bottom: 15),
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                    Icons.play_circle_fill,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The Signal Podcast',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'Make Money With Stock',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade500,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                'Options',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade500,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '35 mins',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade500,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            playPodcast(
                              context,
                              image: 'assets/images/email.png',
                              title: 'Per Our Last',
                              detail: 'How to email market effectively',
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.width / 2.4,
                                width: MediaQuery.of(context).size.width / 2.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/email.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.width / 2.4,
                                width: MediaQuery.of(context).size.width / 2.2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, bottom: 15),
                                  child: Container(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(
                                      Icons.play_circle_fill,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Per Our Last Email',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'How to email market',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade500,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                'effectively',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade500,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                '29 mins',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey.shade500,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CategoryRow(
                audio: false,
                title: 'Suggested shows',
                images: [
                  "assets/images/garyvee.png",
                  "assets/images/enora.png",
                  "assets/images/point.png"
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CategoryRow(
                audio: false,
                title: 'Curated just for you',
                images: [
                  "assets/images/1am.png",
                  "assets/images/show.png",
                  "assets/images/blush.png"
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CategoryRow(
                audio: false,
                title: 'Popular shows in Tech',
                images: [
                  "assets/images/podcasts.png",
                  "assets/images/jaja.png",
                  "assets/images/heavyweight.png"
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CategoryRow(
                audio: true,
                title: 'Our Favorite Episodes of December',
                images: [
                  "assets/images/coffee.png",
                  "assets/images/partner.png",
                  "assets/images/retro.png"
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void playPodcast(BuildContext context, {image, title, detail}) async {
    final snackBar = SnackBar(
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 8),
      duration: Duration(days: 365),
      backgroundColor: Colors.white,
      content: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    detail,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                paused = !paused;
              });
            },
            icon: Icon(
              paused == false ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ],
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  bool paused = false;
}
