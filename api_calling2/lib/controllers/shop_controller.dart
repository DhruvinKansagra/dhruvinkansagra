import 'package:api_calling2/models/ShopModel.dart';
import 'package:api_calling2/services/shop_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ShopController extends GetxController {
  var productlist = <Data>[].obs;
  fetchProduct() async {
    try {
      var call = await ShopServices.getShopList();

      if (call != null) {
        productlist.value = call.data!;
      } else {
        Get.snackbar('ERROR', 'SOMETHING WENT WRONG');
      }
    } catch (e) {
      print(e);
      Get.snackbar("ERROR", "NETWORK PROBLEM");
    }
  }

  @override
  void onInit() {
    fetchProduct();
    // TODO: implement onInit
    super.onInit();
  }
}
