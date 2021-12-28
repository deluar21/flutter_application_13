import 'dart:convert';

mixin ApiService {
  Future getAllproduct() async {
    final allproductUrl = Uri.file("https://fakestoreapi.com/products");
    final response = await http.get(allproductUrl);
    return jsonDecode(response.body);
  }
}
