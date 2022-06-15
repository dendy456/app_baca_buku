import 'package:flutter/material.dart';

class Course {
  List<String> type;
  String name;
  String image;
  String duration;
  int modul;
  Color color;

  Course({
    required this.color,
    required this.duration,
    required this.image,
    required this.modul,
    required this.name,
    required this.type,
  });
}

class Assets {
  static final imageAvatar = 'assets/avatar.png';

  static final menuCourse = [
    {
      'title': 'Baca Buku',
      'image': 'assets/profile/frontend.jpg',
      'buku': 6,
    }
  ];

  static final profesors = [
    'assets/profile/prof1.png',
    'assets/profile/prof2.png',
    'assets/profile/prof3.png',
    'assets/profile/prof4.png',
  ];

  static final List<Course> courses = [
    Course(
      color: Color.fromARGB(255, 128, 222, 234),
      duration: '1915016053',
      image: 'assets/profile/prof1.png',
      modul: 17,
      name: 'Geby Ranti Pakiding',
      type: ['Frontend'],
    ),
    Course(
      color: Color.fromARGB(255, 165, 214, 167),
      duration: '1915016056',
      image: 'assets/profile/prof2.png',
      modul: 17,
      name: 'Martinus Dendy Lussa',
      type: ['Frontend'],
    ),
    Course(
      color: Color.fromARGB(255, 144, 202, 249),
      duration: '1915016067',
      image: 'assets/profile/prof3.png',
      modul: 17,
      name: 'Rolyansyah',
      type: ['Frontend'],
    ),
    Course(
      color: Color.fromARGB(255, 239, 154, 154),
      duration: '1915016084',
      image: 'assets/profile/prof4.png',
      modul: 17,
      name: 'Yudi Aulia',
      type: ['Frontend', 'Backend'],
    ),
    Course(
      color: Color.fromARGB(255, 255, 204, 128),
      duration: '1915016096',
      image: 'assets/profile/avatar.png',
      modul: 17,
      name: 'M Nur Ismianto',
      type: ['Frontend', 'Backend'],
    ),
  ];
}
