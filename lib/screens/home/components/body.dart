import 'package:flutter/material.dart';
import 'package:shop_app_ui/screens/home/components/categories.dart';
import 'package:shop_app_ui/screens/home/components/item_card.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/product.dart';
import 'package:shop_app_ui/screens/details/details_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding),
          child: GridView.builder(itemCount: products.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: kDefaultPadding,crossAxisSpacing: kDefaultPadding-3,childAspectRatio: 0.75), itemBuilder: (context, index) =>ItemCart(product: products[index],press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index]),)),) ,),
        ))
      ],
    );
  }
}
