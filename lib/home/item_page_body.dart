import 'package:flutter/material.dart';

class  ItemPageBody extends StatefulWidget {
  const  ItemPageBody({Key? key}) : super(key: key);

  @override
  State<ItemPageBody> createState() => _ItemPageBodyState();
}

class _ItemPageBodyState extends State< ItemPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context,position){
        return _buildPageItem(position);
      },),
    );
  }

  Widget _buildPageItem(int index){
    return Stack(
      children: [
      Container(
      height: 220,
      margin: EdgeInsets.only(left:5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven? Color(0xFF69c5df): Color(0xFF9294cc),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  "assets/image/item1.jpg"
              )
          )
      ),
    )
      ],
    );
  }
}
