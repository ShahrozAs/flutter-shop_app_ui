import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/product.dart';
import 'package:shop_app_ui/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //it provide the height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: size.height * 0.3),
              height: 550,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
            ),
            ProductTitleWithImage(product: product)
          ]),
        )
      ]),
    );
  }
}
