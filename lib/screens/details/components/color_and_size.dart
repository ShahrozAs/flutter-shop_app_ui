import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/product.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
             Row(
              children: <Widget>[
          
              ColorDot(color: Color(0xff356C95),isSelected: true,),
              ColorDot(color: Color(0xffF8C078),),
              ColorDot(color: Color(0xffA29898),),
              ],
             ),
            ],
          ),
        ),
        Expanded(
          child: RichText(text: TextSpan(
            style: TextStyle(color: kTextColor),
            children: [
              TextSpan(text: "Size\n",),
              TextSpan(text: "${product.size} cm",style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold))
            ]
          )),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key, required this.color,  this.isSelected=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding/4,right: kDefaultPadding/2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ?color:Colors.transparent)
      ),
      child: DecoratedBox(decoration: BoxDecoration(
        color:color,
        shape: BoxShape.circle
      )),
    );
  }
}
