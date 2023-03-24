import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    //GETX Fitur
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("HOME"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.white,
        child: LayoutBuilder(builder: (context, constraints) {
          double lebarKuning = constraints.maxWidth;
          double tinggiKuning = constraints.maxHeight;
          return Center(
              child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                color: Colors.white,
              ),
              Container(
                width: lebarKuning * 0.3,
                height: tinggiKuning * 0.3,
                color: Colors.amber,
              ),
              Container(
                width: lebarKuning * 0.2,
                height: tinggiKuning * 0.2,
                color: Colors.red,
              ),
            ],
          ));
        }),
      ),
    );
  }
}
