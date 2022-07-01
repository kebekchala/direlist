// ignore_for_file: prefer_const_constructors

import 'package:direlist/screens/login/login.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Account",
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
        body: Container(
            child: Column(
          children: <Widget>[
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 18, top: 27.2, right: 12, bottom: 28),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                  ),
                ),
                Column(children: [Text("Welcome"), Text("Kebek Chala")])
              ],
            ),
          ],
        )));
  } //

}
