// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScriptPage extends StatefulWidget {
  final String image;
  const ScriptPage({Key? key, required this.image}) : super(key: key);

  @override
  _ScriptPageState createState() => _ScriptPageState();
}

class _ScriptPageState extends State<ScriptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                ),
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '2021 Recap',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                'The Week in Review with Bill Radke',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.close_rounded)))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Man, I woke up to take a piss and there she was.',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'We went to bed together, so she must have gotten up during the night to do some more and she died.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'What the hell are we gonna do ? ',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "I have no idea. It's why I called you!",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Right. Right. Does anyone else know about this ? ",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Just you.",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "I can't believe this Rex. Do you realize how insane this is right now ? ",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Yeah, yeah, yeah...",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "How are we gonna get her out of here ?\nWe have to wait until nighttime. ",
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 150,
          child: Column(
            children: [
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: Colors.transparent,
                  trackShape: RectangularSliderTrackShape(),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                ),
                child: Slider(
                  activeColor: Colors.blueAccent,
                  inactiveColor: Colors.grey.shade200,
                  value: 30,
                  min: 0,
                  max: 100,
                  onChanged: (double value) {},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '1.0x',
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/svgs/rewindButton.svg',
                    height: 40,
                    width: 40,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.pause,
                          color: Colors.white,
                        ),
                      )),
                  SvgPicture.asset(
                    'assets/svgs/forwardButton.svg',
                    height: 40,
                    width: 40,
                  ),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
