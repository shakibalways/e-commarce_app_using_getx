import 'package:e_commarce_app_using_getx/model/item_model.dart';

import 'package:flutter/material.dart';

class ProductItemDisplay extends StatelessWidget {
  final Product product;

  const ProductItemDisplay({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: NetworkImage(product.image))),
          )
        ],
      ),
    );
  }
}
