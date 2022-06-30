import 'package:direlist/screens/login.dart';
import 'package:flutter/material.dart';
import '../shared/Constans/constans.dart';
import '../shared/components.dart';
class WelcomScreen extends StatelessWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Image(
                image: AssetImage('assets/image/logo.png'),
                height: 250,
                width: 350,
              ),
              const Text("Shopping Now",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black45,
                  fontWeight: FontWeight.w600
                ),
              ),
              const Text("Welcome to DireList", style: TextStyle( fontWeight: FontWeight.w300, color: Color(0xFF8D8E98)),),
              SizedBox(
                height: 20,
                child: defaultMaterialButton(height: 50, width: 300, text:"LOGIN",
                function: (){
                  NavigateTo(router: const Login(), context: context);
                })
              ),
              const SizedBox(
                height: 10,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
