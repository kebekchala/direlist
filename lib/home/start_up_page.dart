import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartUpPage extends StatelessWidget {
  const StartUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(

      child: CircleAvatar(
          maxRadius: 100,
          backgroundColor: Colors.yellowAccent,
          child: Image.asset("assets/image/logo.png"),
      ),
    );
  }
}
