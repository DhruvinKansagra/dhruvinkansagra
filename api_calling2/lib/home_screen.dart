import 'package:api_calling2/controllers/shop_controller.dart';
import 'package:api_calling2/models/ShopModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  ShopController shopController = Get.put(ShopController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: shopController.productlist.length,
        itemBuilder: (context, index) {
          return Container(
            child: Text(shopController.productlist[index].name!),
          );
        },
      ),
    );
  }
}
