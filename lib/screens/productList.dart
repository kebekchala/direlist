import 'package:direlist/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  //final detailsController = Get.find<ProductController>();
  final detailsController = Get.find<ProductController>();
  final double screenHeight = Get.context!.height;
  final double screenWidth = Get.context!.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            Container(
              height: 440,
              padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                width: screenWidth,
                height: 200,
                padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          detailsController.productList[2].image,
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(25)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
