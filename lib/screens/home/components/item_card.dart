import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/product.dart';


class ItemCart extends StatelessWidget {
final Product product;
// final Function press;
Function()? press;
   ItemCart({
    super.key, required this.product,  this.press,  
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product.image),
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.symmetric(vertical :kDefaultPadding/4),
            child: Text(product.title,style: TextStyle(color: kTextLightColor),),
          ),
          
          Text("\$${product.price}",style: TextStyle(fontWeight:FontWeight.bold ),)
      
        ],
      ),
    );
  }
}
