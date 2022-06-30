import 'package:flutter/material.dart';

class Home extends StatefulWidget {
   Home({Key? key, required this.title, this.show_back_button= false,this.go_back = true}) : super(key: key);
  final String title;
  bool show_back_button;
  bool go_back;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
