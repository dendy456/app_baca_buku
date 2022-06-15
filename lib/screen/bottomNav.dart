import 'package:app_baca_buku/screen/FavoritePage.dart';
import 'package:app_baca_buku/screen/about.dart';
import 'package:app_baca_buku/screen/components/Notification.dart';
import 'package:app_baca_buku/screen/components/body.dart';
import 'package:app_baca_buku/screen/drawer.dart';
import 'package:app_baca_buku/screen/about.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';

class NavigasiBawah extends StatefulWidget {
  const NavigasiBawah({Key? key}) : super(key: key);

  @override
  State<NavigasiBawah> createState() => _NavigasiBawahState();
}

class _NavigasiBawahState extends State<NavigasiBawah> {
  int _selectedIndex = 0;
  final Controller myController = Get.put(Controller());
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Body(),
    ShowBook(),
    notification(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.green,
          width: 200,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => CircleAvatar(
                        radius: 50,
                        backgroundColor: myController.switchValue.value
                            ? Color.fromARGB(220, 0, 0, 0)
                            : Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: Image.asset("assets/splash.png",
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => Text(
                        "Baca Buku",
                        style: TextStyle(
                            color: myController.switchValue.value
                                ? Colors.white
                                : Colors.black,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Obx(
                  () => ListView(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) {
                            return MenuSamping();
                          }));
                        },
                        leading: Icon(
                          Icons.home,
                          color: myController.switchValue.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        title: Text("Home",
                            style: TextStyle(
                              color: myController.switchValue.value
                                  ? Colors.white
                                  : Colors.black,
                            )),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.person,
                          color: myController.switchValue.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        title: Text(
                          "Profil",
                          style: TextStyle(
                            color: myController.switchValue.value
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return About();
                          }));
                        },
                        leading: Icon(
                          Icons.error_outline,
                          color: myController.switchValue.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        title: Text(
                          "About",
                          style: TextStyle(
                            color: myController.switchValue.value
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Icon(
                          Icons.logout,
                          color: myController.switchValue.value
                              ? Colors.white
                              : Colors.black,
                        ),
                        title: Text(
                          "Log Out",
                          style: TextStyle(
                            color: myController.switchValue.value
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
            child: Text(
          "App Baca Buku",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          Obx(
            () => Switch(
              value: myController.switchValue.value,
              onChanged: (newValue) {
                myController.switchValue.value = newValue;
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          backgroundColor: myController.switchValue.value
              ? Color.fromARGB(220, 0, 0, 0)
              : Color.fromARGB(255, 201, 201, 201),
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(
              Icons.favorite,
              size: 30,
              color: Colors.pink,
            ),
            Icon(Icons.list, size: 30),
          ],
          onTap: (index) {
            _onItemTapped(index);
          },
        ),
      ),
      body: Center(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var switchValue = false.obs;
}
