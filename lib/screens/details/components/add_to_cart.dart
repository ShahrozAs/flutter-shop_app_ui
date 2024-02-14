import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/product.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:kDefaultPadding),
      child: Row(
        
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color,)
            ),
            child: IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/add_to_cart.svg",color: product.color,) ),
          ),
          Expanded(
            child: SizedBox(height: 50,
            child: TextButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(product.color),foregroundColor: MaterialStatePropertyAll(Colors.white)),onPressed: (){},child: Text("Buy Now".toUpperCase(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),),
          ),
    
        ],
      ),
    );
  }
}
