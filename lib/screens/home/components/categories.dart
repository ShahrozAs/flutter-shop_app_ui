import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories= ["Hand Bag","Jewellery","Footwear","Dresses"] ;
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(itemBuilder: (context, index) {
          return buildCategory(index);
       
        },scrollDirection: Axis.horizontal,itemCount: categories.length,),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
    onTap: (){
      setState(() {
        selectedIndex=index;
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding+8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(categories[index],style: TextStyle(fontWeight: FontWeight.bold,color: selectedIndex==index? kTextColor:kTextLightColor),),
    
          Container(height: 2,width: 30,
          color:selectedIndex==index? Colors.black:Colors.transparent,margin: EdgeInsets.only(top:3),)
          
        ],
      ),
    ),
  );
}