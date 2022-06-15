import 'package:app_baca_buku/screen/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:app_baca_buku/models/Product.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class ItemCard extends StatelessWidget {
  final Controller myController = Get.find();
  final Product product;
  final VoidCallback press;
  ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  Widget objekGambar() {
    return Obx(
      () => GestureDetector(
        onTap: press,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
                right: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 6,
                    offset: Offset(8, 8),
                    spreadRadius: 1,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding: const EdgeInsets.all(100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(product.image), fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              product.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: myController.switchValue.value
                    ? Color.fromARGB(220, 255, 255, 255)
                    : Color.fromARGB(220, 0, 0, 0),
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Hal : ${product.halaman}',
              style: TextStyle(
                color: myController.switchValue.value
                    ? Color.fromARGB(220, 255, 255, 255)
                    : Color.fromARGB(220, 0, 0, 0),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return objekGambar();
  }
}
