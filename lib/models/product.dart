import 'package:flutter/material.dart';

class Product {
  final String image,title,description;
  final int price,size,id;
  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color, 


  });
  
}

List<Product> products=[
Product(image: "assets/images/bag_1.png", title: "Office Code", description: dummyText, price: 234, size: 12, id: 1, color: Color(0xff3D82AE)),

Product(image: "assets/images/bag_2.png", title: "Belt Bag", description: dummyText, price: 234, size: 8, id: 2, color: Color(0xffD3A984)),

Product(image: "assets/images/bag_3.png", title: "Hang Top", description: dummyText, price: 234, size: 10, id: 3, color: Color(0xff989493)),

Product(image: "assets/images/bag_4.png", title: "Old Fashion", description: dummyText, price: 234, size: 11, id: 4, color: Color(0xffE6B398)),

Product(image: "assets/images/bag_5.png", title: "Office Code", description: dummyText, price: 234, size: 12, id: 5, color: Color(0xffFB7883)),

Product(image: "assets/images/bag_6.png", title: "Old Fashion", description: dummyText, price: 234, size: 11, id: 6, color: Color(0xffAEAEAE)),
];


String dummyText="Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam quisquam, dolorum voluptatibus eius perferendis quis repellendus quaerat, sit architecto facere non tenetur quasi atque quibusdam vitae cupiditate, commodi fugit adipisci vero? Veniam!";