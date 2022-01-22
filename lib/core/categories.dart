// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:wave/core/saving.dart';
import 'package:wave/core/widgets/category_circle.dart';
import 'package:wave/utils/constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List clickedCategories = [];
  int counter = 0;

  @override
  void initState() {
    super.initState();
    appendCategories();
  }

  appendCategories() {
    clickedCategories = [];
    for (var a = 0; a < categories.length; a++) {
      clickedCategories.add(false);
    }
  }

  countClicked() {
    counter = 0;
    for (var a = 0; a < clickedCategories.length; a++) {
      if (clickedCategories[a] == true) {
        setState(() {
          counter++;
        });
      }
    }
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              setState(() {
                appendCategories();
              });
            },
            child: Text(
              'Reset',
              style: TextStyle(
                color: Colors.pink,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                if (counter >= 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Saving(),
                    ),
                  );
                }
              },
              child: Text(
                'Done',
                style: TextStyle(
                  color:
                      counter >= 3 ? Colors.blueAccent : Colors.blueAccent[100],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Center(
                child: Text(
                  'Choose at least 3 of your favorite categories.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 7,
                  // crossAxisSpacing: 1,
                  crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        clickedCategories[index] = !clickedCategories[index];
                        print(clickedCategories[index]);
                      });
                      countClicked();
                    },
                    child: CategoryCircle(
                      categoryName: categories[index],
                      clicked: clickedCategories[index],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
