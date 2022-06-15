import 'package:app_baca_buku/models/Product.dart';
import 'package:app_baca_buku/screen/bottomNav.dart';
import 'package:app_baca_buku/screen/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_baca_buku/screen/components/item_cart.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final Controller myController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        color: myController.switchValue.value
            ? Color.fromARGB(220, 0, 0, 0)
            : Color.fromARGB(255, 201, 201, 201),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 30,
                        childAspectRatio: 0.4),
                    itemBuilder: (context, index) => ItemCard(
                        product: products[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsScreen(product: products[index]))))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
