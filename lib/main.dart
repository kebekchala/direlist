import 'package:direlist/home/main_item_page.dart';
import 'package:direlist/screens/forgot_password.dart';
import 'package:direlist/screens/login/login.dart';
import 'package:direlist/screens/profile.dart';
import 'package:direlist/screens/signup/registration.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';
import 'package:provider/provider.dart';
import 'home/start_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: OneContext().builder,
        title: 'DireList',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Login());
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 0.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: ((MediaQuery.of(context).size.width - 28) / 2) + 2,
              child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16), bottom: Radius.zero),
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/image/item1.jpg",
                    image:
                        "https://media.istockphoto.com/photos/chat-comment-bubble-camera-hashtag-wi-fi-wireless-network-symbol-play-picture-id1323562298?s=612x612",
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 8, 16, 0),
                    child: Text("CARD Product",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 14,
                            height: 1.2,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                    child: Text(
                      "56 birr",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                    child: Text(
                      "10 birr",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.yellow,
                          fontSize: 11,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price})
      : super(key: key);
  final String name;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/image/item1.jpg"),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(description),
                        Text("Price $price")
                      ],
                    ),
                  ),
                )
              ]
              /*   Container(
              height: 300,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/item1.jpg')
                  )
              ),
            ),
            Column(

                children: [
                  Text(name),
                  Text(description),
                  Text("price: $price")
                ]
            )
          ],*/
              ),
        ));
  }
}
