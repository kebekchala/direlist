import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:  AppBar(
        title: const Center(
          child: Text(
            "Favorites",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        leading: SizedBox(
          width: screenWidth,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
