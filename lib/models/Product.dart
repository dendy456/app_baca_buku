import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int halaman, id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.halaman,
    required this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Harry Potter 1",
    halaman: 234,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    image: "assets/buku/book_1.jpg",
  ),
  Product(
    id: 2,
    title: "Harry Potter 2",
    halaman: 250,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    image: "assets/buku/book_2.jpg",
  ),
  Product(
    id: 3,
    title: "Harry Potter 3",
    halaman: 180,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    image: "assets/buku/book_3.jpg",
  ),
  Product(
    id: 4,
    title: "Harry Potter 4",
    halaman: 211,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    image: "assets/buku/book_4.jpg",
  ),
  Product(
    id: 5,
    title: "Harry Potter 5",
    halaman: 200,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    image: "assets/buku/book_5.jpg",
  ),
  Product(
    id: 6,
    title: "Harry Potter 6",
    halaman: 100,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    image: "assets/buku/book_6.jpg",
  ),
  Product(
      id: 7,
      title: "Recipie For a Per..",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/3.jpg",
      halaman: 300),
  Product(
      id: 8,
      title: "The Glass Hotel",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/4.jpg",
      halaman: 100),
  Product(
      id: 9,
      title: "Conjure Women",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/0.jpg",
      halaman: 250),
  Product(
      id: 10,
      title: "Felix Ever After",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/1.jpg",
      halaman: 150),
  Product(
      id: 11,
      title: "From The Ashes",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/2.jpg",
      halaman: 240),
  Product(
      id: 12,
      title: "City of Girls",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/5.jpg",
      halaman: 450),
  Product(
      id: 13,
      title: "Everything I never..",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/6.jpg",
      halaman: 203)
];

List<Product> _recentBooks = [
  Product(
      id: 13,
      title: "Everything I never..",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/6.jpg",
      halaman: 203),
  Product(
    id: 2,
    title: "Harry Potter 2",
    halaman: 250,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    image: "assets/buku/book_2.jpg",
  ),
  Product(
      id: 11,
      title: "From The Ashes",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/2.jpg",
      halaman: 240),
  Product(
    id: 4,
    title: "Harry Potter 4",
    halaman: 211,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
    image: "assets/buku/book_4.jpg",
  ),
  Product(
      id: 9,
      title: "Conjure Women",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/0.jpg",
      halaman: 250),
  Product(
      id: 8,
      title: "The Glass Hotel",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image: "assets/buku/4.jpg",
      halaman: 100),
];

List<Product> get allBooks {
  return [...products];
}

List<Product> get recentBooks {
  return [..._recentBooks];
}