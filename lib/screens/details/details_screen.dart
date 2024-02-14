import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/product.dart';
import 'package:shop_app_ui/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
    backgroundColor: product.color,
    elevation: 0,
    leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: SvgPicture.asset("assets/icons/back.svg",color: Colors.white,)),

    actions: <Widget>[
      // ignore: deprecated_member_use
      IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/search.svg",)),
      IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/cart.svg",)),
      SizedBox(width: kDefaultPadding/2,)
    ],
  );
  }
}