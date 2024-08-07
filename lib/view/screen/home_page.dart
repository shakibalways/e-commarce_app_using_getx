import 'package:e_commarce_app_using_getx/controller/getx/getx.dart';
import 'package:e_commarce_app_using_getx/view/screen/product_item_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: const [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                if(productController.isLoading.value){
                  return const Center(
                    child: CircularProgressIndicator(backgroundColor: Colors.green,),
                  );
                }else {
                  return GridView.builder(
                    shrinkWrap: true,
                    itemCount: productController.productItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.70),
                    itemBuilder: (context, index) {
                      return ProductItemDisplay(
                        product: productController.productItems[index],
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
