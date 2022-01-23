// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wave/core/widgets/discover/discover_pill.dart';
import 'package:wave/utils/constants.dart';

import 'search.dart';
import 'widgets/home/details.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

const images = [
  "assets/images/signal.png",
  "assets/images/told.png",
  "assets/images/blush.png",
  "assets/images/honour.png",
  "assets/images/drive.png",
  "assets/images/heavyweight.png",
  "assets/images/1am.png",
];
const descriptions = [
  "The Signal Podcast",
  "Melodic Techno",
  "The Voices in Our H..",
  "The Lap of Honour",
  "The Drive To Oblivion",
  "A Burden for One",
  "1 AM Podcast",
];

class _DiscoverState extends State<Discover> {
  List clickedCategories = [];

  @override
  void initState() {
    super.initState();
    setCategories();
  }

  setCategories() {
    for (var a = 0; a < discoverCategories.length; a++) {
      if (a == 0) {
        clickedCategories.add(true);
      } else {
        clickedCategories.add(false);
      }
    }
  }

  appendCategories() {
    clickedCategories = [];
    for (var a = 0; a < discoverCategories.length; a++) {
      clickedCategories.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Discover',
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var a = 0; a < discoverCategories.length; a++)
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: DiscoverPill(
                          function: () {
                            setState(() {
                              appendCategories();
                              clickedCategories[a] = !clickedCategories[a];
                            });
                            print(clickedCategories[a]);
                          },
                          categoryName: discoverCategories[a],
                          clicked: clickedCategories[a],
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 1,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Details(
                                image: images[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.width / 2.4,
                          width: MediaQuery.of(context).size.width / 2.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  descriptions[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
