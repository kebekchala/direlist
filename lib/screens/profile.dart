// ignore_for_file: prefer_const_constructors

import 'package:direlist/screens/login/login.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: <Widget>[
                Divider(height: 10, color: Color.fromARGB(255, 175, 170, 155)),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 18, right: 12, top: 5, bottom: 5),
                          child: CircleAvatar(
                            backgroundColor: Colors.pink,
                            radius: 35,
                          ),
                        ),
                        Column(children: [Text("Welcome"), Text("Kebek Chala")])
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.logout,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(height: 10, color: Color.fromARGB(255, 175, 170, 155)),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 18, right: 12, top: 10, bottom: 5),
                                  child: Icon(
                                    size: 30,
                                    Icons.person_outline,
                                    color: Colors.black,
                                  ),
                                ),
                                Text("profile",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 18,
                                        right: 12,
                                        top: 10,
                                        bottom: 5),
                                    child: Icon(
                                      size: 30,
                                      Icons.settings_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Setting",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 18, right: 12, top: 10, bottom: 5),
                                  child: Icon(
                                    size: 30,
                                    Icons.card_travel_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                Text("Orders",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 18, right: 12, top: 10, bottom: 5),
                                  child: Icon(
                                    size: 30,
                                    Icons.category_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                Text("Category",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 18, right: 12, top: 10, bottom: 5),
                                  child: Icon(
                                    size: 30,
                                    Icons.location_on_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                Text("Address",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 18, right: 12, top: 10, bottom: 5),
                                  child: Icon(
                                    size: 30,
                                    Icons.person_outline,
                                    color: Colors.black,
                                  ),
                                ),
                                Text("profile",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: GestureDetector(
                          onTap: () {
                            //  onPressSignUp(context);
                          },
                          child: Container(
                            margin: EdgeInsets.all(20),
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white),
                                color: AppColors.iconColor1),
                            //width: 350,
                            alignment: const Alignment(0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Icon(
                                    size: 30,
                                    Icons.contact_support_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Contact Us",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: const [
                Text("ADM-Technologies"),
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text("version 1.0.0"),
                )
              ],
            ),
          ],
        ));
  } //

}
