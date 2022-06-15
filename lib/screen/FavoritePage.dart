import 'package:app_baca_buku/models/Product.dart';
import 'package:app_baca_buku/screen/bottomNav.dart';
import 'package:app_baca_buku/screen/details_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final Controller myController = Get.find();

class ShowBook extends StatelessWidget {
  ShowBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        color: myController.switchValue.value
            ? Color.fromARGB(220, 0, 0, 0)
            : Color.fromARGB(255, 201, 201, 201),
        child: ListView(
          children: [
            BookSection(heading: "Continue Reading", bookList: recentBooks),
            BookSection(heading: "Favorite", bookList: recentBooks),
            BookSection(heading: "Discover More", bookList: allBooks),
          ],
        ),
      ),
    );
  }
}

class BookSection extends StatelessWidget {
  final String heading;
  final List bookList;

  BookSection({required this.heading, required this.bookList});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                heading,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  color: myController.switchValue.value
                      ? Color.fromARGB(220, 255, 255, 255)
                      : Color.fromARGB(220, 0, 0, 0),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              height: MediaQuery.of(context).size.height * 0.30,
              child: ListView.builder(
                itemBuilder: (ctx, i) => GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                              left: 5,
                            ),
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: MediaQuery.of(context).size.width * 0.22,
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.4),
                                        blurRadius: 5,
                                        offset: Offset(8, 8),
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      bookList[i].image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              bookList[i].title,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: myController.switchValue.value
                                    ? Color.fromARGB(220, 255, 255, 255)
                                    : Color.fromARGB(220, 0, 0, 0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                itemCount: bookList.length,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
