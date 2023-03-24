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
          return Wrap(
            children: [
              Container(
                width: lebarKuning * 1,
                height: tinggiKuning * 0.3,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: lebarKuning * 0.325,
                height: tinggiKuning * 0.2,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: lebarKuning * 0.325,
                height: tinggiKuning * 0.2,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: lebarKuning * 0.325,
                height: tinggiKuning * 0.2,
                color: Colors.yellow,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: lebarKuning * 0.325,
                height: tinggiKuning * 0.2,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: lebarKuning * 0.325,
                height: tinggiKuning * 0.2,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: lebarKuning * 0.325,
                height: tinggiKuning * 0.2,
                color: Colors.indigo,
              ),
              Container(
                width: lebarKuning * 1,
                height: tinggiKuning * 0.2,
                color: Colors.purple,
              ),
            ],
          );
        }),
      ),
    );
  }
}
