import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  final String title;
  final List images;
  final bool audio;
  const CategoryRow(
      {Key? key,
      required this.title,
      required this.images,
      required this.audio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var a = 0; a < images.length; a++)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width / 2.5,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(images[a]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 2.5,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 15.0, bottom: 10),
                            child: Container(
                              alignment: Alignment.bottomRight,
                              child: audio == true
                                  ? const Icon(
                                      Icons.play_circle_fill,
                                      color: Colors.white,
                                      size: 28,
                                    )
                                  : Container(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
