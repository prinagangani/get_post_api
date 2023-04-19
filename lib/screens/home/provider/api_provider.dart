
import 'package:flutter/cupertino.dart';
import 'package:get_post_api/utils/api_helper.dart';

import '../modal/api_modal.dart';

class ApiProvider extends ChangeNotifier
{
  List<dynamic> jsonList = [];

  Future<List<dynamic>> getApi()
  async {
    ApiHelper apiHelper = ApiHelper();
    List<dynamic> productList = await apiHelper.getApi();
    jsonList = productList;
    return jsonList;
  }


  Future<void> postApi(p_name,p_rate,p_desc,p_offer,p_price,p_cat)
  async {
    ApiHelper apiHelper = ApiHelper();
    String data = await apiHelper.postApi(p_name,p_rate,p_price,p_offer,p_desc,p_cat);
    notifyListeners();
    if(data==true)
    {
      print("success");
    }
    else
    {
      print("fail");
    }
  }
}