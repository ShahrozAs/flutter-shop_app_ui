import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/product.dart';
import 'package:shop_app_ui/screens/details/components/add_to_cart.dart';
import 'package:shop_app_ui/screens/details/components/cart_counter.dart';
import 'package:shop_app_ui/screens/details/components/color_and_size.dart';
import 'package:shop_app_ui/screens/details/components/counter_with_favorite_button.dart';
import 'package:shop_app_ui/screens/details/components/description.dart';
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
              // height: 550,
              padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: kDefaultPadding,
                  right: kDefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),

              child: Column(
                children: <Widget>[
                  SizedBox(height: kDefaultPadding/2,),
                  ColorAndSize(product: product),

                  SizedBox(height: kDefaultPadding/2,),
                  Description(product: product),
                  SizedBox(height: kDefaultPadding/2,),

                  CounterWithFavoriteButton(),
                  SizedBox(height: kDefaultPadding/2,),

                  AddToCart(product: product)
                ],
              ),
            ),
            ProductTitleWithImage(product: product)
          ]),
        )
      ]),
    );
  }
}
