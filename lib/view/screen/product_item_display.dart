import 'package:e_commarce_app_using_getx/model/item_model.dart';

import 'package:flutter/material.dart';

class ProductItemDisplay extends StatelessWidget {
  final Product product;

  const ProductItemDisplay({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: NetworkImage(product.image))),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              product.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green,
                  ),
                  child: Row(
                    children: [
                      Text(
                        product.rating.rate.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.star,
                        size: 18,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Text(
                  product.category.name.toLowerCase(),
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Text("\$${product.price}",style: const TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20
            ),),
          ],
        ),
      ),
    );
  }
}
