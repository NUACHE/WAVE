// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VoiceTrigger extends StatefulWidget {
  const VoiceTrigger({Key? key}) : super(key: key);

  @override
  State<VoiceTrigger> createState() => _VoiceTriggerState();
}

class _VoiceTriggerState extends State<VoiceTrigger> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(height: 20),
                  Container(
                    height: MediaQuery.of(context).size.width / 1.1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        colorFilter:
                            ColorFilter.mode(Colors.black26, BlendMode.darken),
                        image: AssetImage('assets/images/podcasts.png'),
                      ),
                    ),
                  ),
                  Container(height: 10),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "2021 Recap",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(height: 5),
                            Text(
                              "The Week in Review with Bill Radke.",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.transparent,
                      trackShape: RectangularSliderTrackShape(),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 0.0),
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
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 55,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: ButtonTheme(
                          minWidth: 50.0,
                          height: 50.0,
                          // ignore: deprecated_member_use
                          child: OutlineButton(
                            onPressed: () async {},
                            textColor: Colors.blueAccent,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                            ),
                            child: SizedBox(
                              width: 100,
                              child: Row(
                                children: [
                                  Icon(Icons.checklist),
                                  Text(
                                    'View Script',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: clicked == false
                        ? Colors.black26.withOpacity(0.8)
                        : Colors.black26.withOpacity(0.9),
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Container(
                          child: clicked == true
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: DefaultTextStyle(
                                      style: const TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      child: AnimatedTextKit(
                                        isRepeatingAnimation: false,
                                        animatedTexts: [
                                          TyperAnimatedText(
                                            'Play the garyvee audio experience podcast',
                                          ),
                                        ],
                                        onTap: () {
                                          print("Tap Event");
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              : Column(
                                  children: [
                                    Text(
                                      'Try asking Wave to',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Play a podcast',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Like this podcast',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Share this podcast',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Increase the playback speed',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                        Spacer(),
                        clicked == true
                            ? Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //  color: Colors.grey.shade500,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                ),
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      //  color: Colors.grey.shade500,
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 10,
                                      ),
                                    ),
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          //  color: Colors.grey.shade500,
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 2,
                                          ),
                                        ),
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.transparent,
                                              border: Border.all(
                                                color: Colors.transparent,
                                                width: 2,
                                              ),
                                            ),
                                            child: Center(
                                              child: Container(
                                                height: 85,
                                                width: 85,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey.shade500,
                                                  border: Border.all(
                                                    color: Colors.transparent,
                                                    width: 2,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Container(
                                                    height: 70,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color:
                                                          Colors.grey.shade500,
                                                      border: Border.all(
                                                        color: Colors.white,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: IconButton(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        onPressed: () {
                                                          setState(() {
                                                            clicked = !clicked;
                                                          });
                                                        },
                                                        icon: Icon(
                                                          Icons
                                                              .mic_none_outlined,
                                                          color: Colors.white,
                                                          size: 40,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {
                                      setState(() {
                                        clicked = !clicked;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.mic_none_outlined,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
