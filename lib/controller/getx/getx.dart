import 'package:e_commarce_app_using_getx/controller/api_service/remote_service.dart';
import 'package:e_commarce_app_using_getx/model/item_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productItems = <Product>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteService.fetchProducts();
      if (products != null) {
        productItems.assignAll(products);
      }
    } finally  {
      isLoading(false);
    }
  }
}
