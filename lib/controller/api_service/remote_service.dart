

import 'package:e_commarce_app_using_getx/model/item_model.dart';
import 'package:http/http.dart' as http;
class RemoteService {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(
        Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var json = response.body;
      return productFromJson(json);
    } else {
      print("Error response:${response.body}");
    }
    return null;
  }
}