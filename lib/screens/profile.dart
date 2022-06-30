import 'package:direlist/screens/login.dart';
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
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center( child: Text("Account", style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),),
        backgroundColor: Colors.white,
        leading: Container(
          width: screenWidth ,
          child: Column(
              children:<Widget> [
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
                  ),
                ),
                Divider(
                  color: Colors.black,
                )
              ],
          ),
        )
      ),
      body: Container(
      ),
    );
  }//

}
