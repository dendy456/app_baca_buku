import 'dart:ui';

import 'package:app_baca_buku/screen/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:app_baca_buku/screen/drawer.dart';
import 'package:app_baca_buku/screen/assets.dart';
import 'package:get/get.dart';

final Controller myController = Get.put(Controller());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  header(),
                  GridView.builder(
                    itemCount: Assets.menuCourse.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(16),
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 1
                          : 2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                    ),
                    itemBuilder: (context, index) {
                      Map map = Assets.menuCourse[index];
                      return GestureDetector(
                        onTap: () {},
                        child:
                            itemGrid(map['image'], map['title'], map['buku']),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  titleList('Anggota Kelompok ', () {}),
                  listOnProgress(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
              left: 20,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: myController.switchValue.value
                        ? Colors.black
                        : Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: myController.switchValue.value
                          ? Colors.white
                          : Colors.black,
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

  Widget listProfesor() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: Assets.profesors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          String imageProf = Assets.profesors[index];
          return Container(
            margin: EdgeInsets.fromLTRB(
              index == 0 ? 16 : 8,
              0,
              index == Assets.profesors.length - 1 ? 16 : 8,
              0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 6,
                  color: Colors.black38,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                imageProf,
                fit: BoxFit.cover,
                height: 60,
                width: 60,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget titleList(String title, Function function) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          GestureDetector(
            child: Icon(Icons.navigate_next),
            onTap: () => function,
          ),
        ],
      ),
    );
  }

  Widget listOnProgress() {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      padding: EdgeInsets.all(16),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        Course course = Assets.courses[index];
        return Container(
          margin: EdgeInsets.fromLTRB(
            0,
            index == 0 ? 0 : 8,
            0,
            index == 1 ? 0 : 8,
          ),
          decoration: BoxDecoration(
            color: Colors.indigo[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    course.image,
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        course.duration,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Material(
                  borderRadius: BorderRadius.circular(100),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Icon(
                        Icons.checklist_rounded,
                        size: 40,
                        color: Colors.indigo[900],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget itemGrid(String image, String title, int modul) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 6,
            color: Colors.black38,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '$modul Buku',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'ABOUT',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Baca Buku',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget background() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.indigo[900],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
    );
  }
}
