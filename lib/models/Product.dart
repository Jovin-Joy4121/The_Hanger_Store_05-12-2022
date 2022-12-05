import 'package:flutter/material.dart';

class Product1 {
  final String? image;
  final String? title;
  final String? description;
  final int? price;
  final double? quantity;
  final int? id;
  final Color? color;
  const Product1({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.quantity,
    this.color,
  });
}

class Product2 {
  final String? image;
  final String? title;
  final String? description;
  final int? price;
  final double? quantity;
  final int? id;
  final Color? color;
  const Product2({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.quantity,
    this.color,
  });
}
class Product3 {
  final String? image;
  final String? title;
  final String? description;
  final int? price;
  final double? quantity;
  final int? id;
  final Color? color;
  const Product3({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.quantity,
    this.color,
  });
}
class Product4{
  final String? image;
  final String? title;
  final String? description;
  final int? price;
  final double? quantity;
  final int? id;
  final Color? color;
  const Product4({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.quantity,
    this.color,
  });
}

List<Product1> products = [
  Product1(
      id: 1,
      title: "Wood hanger",
      price: 1200,
      quantity: 1,
      description: dummyText1,
      image: "assets/images/h1.jpg",
      color: Colors.black),
  Product1(
      id: 2,
      title: "Steel Hanger",
      price: 600,
      quantity: 1/2,
      description: dummyText2,
      image: "assets/images/h2.jpg",
      color: Colors.black),
  Product1(
      id: 3,
      title: "Plastic Hanger",
      price: 240,
      quantity: 1/2,
      description: dummyText3,
      image: "assets/images/h3.jpg",
      color: Colors.grey.shade900),
  Product1(
      id: 4,
      title: "Multipurpose Hanger",
      price: 1800,
      quantity: 1.5,
      description: dummyText4,
      image: "assets/images/h4.jpg",
      color: Colors.grey.shade900),
  Product1(
      id: 5,
      title: "Wood hanger",
      price: 1200,
      quantity: 1,
      description: dummyText1,
      image: "assets/images/bh1.jpg",
      color: Colors.grey.shade800),
  Product1(
      id: 6,
      title: "Steel Hanger",
      price: 600,
      quantity: 1/2,
      description: dummyText2,
      image: "assets/images/bh2.jpg",
      color: Colors.grey.shade800),
  Product1(
      id: 7,
      title: "Plastic Hanger",
      price: 240,
      quantity: 1/2,
      description: dummyText3,
      image: "assets/images/sh1.jpg",
      color: Colors.grey.shade700),
  Product1(
      id: 8,
      title: "Multipurpose Hanger",
      price: 1800,
      quantity: 1.5,
      description: dummyText4,
      image: "assets/images/sh2.jpg",
      color: Colors.grey.shade700),
  Product1(
      id: 9,
      title: "Wood hanger",
      price: 1200,
      quantity: 1,
      description: dummyText1,
      image: "assets/images/sh3.jpg",
      color: Colors.grey.shade600),
  Product1(
      id: 10,
      title: "Steel Hanger",
      price: 600,
      quantity: 1/2,
      description: dummyText2,
      image: "assets/images/m1.jpg",
      color: Colors.grey.shade600),
  Product1(
      id: 11,
      title: "Plastic Hanger",
      price: 240,
      quantity: 1/2,
      description: dummyText3,
      image: "assets/images/m2.jpg",
      color: Colors.grey.shade500),
  Product1(
      id: 12,
      title: "Multipurpose Hanger",
      price: 1800,
      quantity: 1.5,
      description: dummyText4,
      image: "assets/images/bag_4.png",
      color: Colors.grey.shade500),


];

String dummyText1=
    "Butler Luxury’s Unique Hangers \nIf you’re ready to update your closet, start with Butler Luxury’s unique hangers. This collection includes a variety of wooden hangers, made from finest Teak wood from the land of Himalayas need for your wardrobe. ";
String dummyText2=
    "Butler Luxury’s Unique Hangers \nIf you’re ready to update your closet, start with Butler Luxury’s unique hangers. This collection includes a variety of steel hangers,\n made from the finests metals in the world like VIBRANIUM & ADAMANTIUM exported directed from Wakanda under the influence of Princess shuri in the absence of king tachala for your wardrobe. ";
String dummyText3=
    "Butler Luxury’s Unique Hangers \nIf you’re ready to update your closet, start with Butler Luxury’s unique hangers. This collection includes a variety of Fiber hangers, allowing you to customize your closet with just the styles you need for your wardrobe. ";
String dummyText4=
    "Butler Luxury’s Unique Hangers \nIf you’re ready to update your closet, start with Butler Luxury’s unique hangers. This collection includes a variety of Mutlipurpose hangers, allowing you to customize your closet with just the styles you need for your wardrobe. ";
