import 'dart:convert';

import 'package:get_post_api/screens/home/modal/api_modal.dart';
import 'package:http/http.dart' as http;
class ApiHelper {
  ProductModal productModal = ProductModal();
  Future<List> getApi() async {
    String link = "https://apidatahub.000webhostapp.com/MyShop/API/products.php";
    Uri uri = Uri.parse(link);
    var response = await http.get(uri);
    List data = jsonDecode(response.body);
    List<dynamic> productModel = data.map((e)=>ProductModal().ProductFromJson(e)).toList();
    return productModel;
  }

  Future<String> postApi(String pName,String pRate, String pPrice, String pCat, String pDesc, String pOffer)
  async {
    String link = "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    Uri uri = Uri.parse(link);
    var response = await http.post(uri,body: {"p_name":pName,"p_rate":pRate,"p_price":pPrice,"p_category":pCat,"p_desc":pDesc,"p_offer":pOffer,});
    if(response.statusCode == 200)
      {
        return "Sucess";
      }
    return "failed";
  }

}