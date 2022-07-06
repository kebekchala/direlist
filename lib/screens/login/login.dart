import 'package:direlist/screens/forgot_password.dart';
import 'package:direlist/screens/menu.dart';
import 'package:direlist/screens/signup/registration.dart';
import 'package:direlist/widgets/big_text.dart';
import 'package:direlist/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:direlist/custom/input_decoration.dart';
import 'package:toast/toast.dart';

import '../../custom/toast_component.dart';
import '../../utils/colors.dart';
import '../../widgets/checkbox.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  onPressedLogin(context) {
    var email = _emailController.text.toString();
    var password = _passwordController.text.toString();

    if (email == "") {
      ToastComponent.showDialog("Enter your Email", context,
          gravity: Toast.center, duration: Toast.lengthLong);
      return;
    } else if (password == "") {
      ToastComponent.showDialog("Enter your Password", context,
          gravity: Toast.center, duration: Toast.lengthLong);
      return;
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const Menu();
      }));
    }
  }

  onPressedForgetPassword(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const ForgotPassword();
    }));
  }

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: screenWidth * (3 / 4),
            child: Image.asset("assets/image/splash_login.png"),
          ),
          Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 15),
                    child: SizedBox(
                      width: 150,
                      height: 100,
                      child: Image.asset("assets/image/logo.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: AppColors.mainBalckColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: screenWidth * (3 / 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              "E-Mail",
                              style: TextStyle(color: AppColors.mainBalckColor),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 36,
                                child: TextField(
                                    controller: _emailController,
                                    autofocus: false,
                                    decoration:
                                        InputDecorations.buildInputDecoration_1(
                                            hint_text: "kebek@gmail.com")),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                color: AppColors.mainBalckColor,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 36,
                                child: TextField(
                                  controller: _passwordController,
                                  autofocus: false,
                                  obscureText: true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  decoration:
                                      InputDecorations.buildInputDecoration_1(
                                          hint_text: "***********"),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                  child: Row(
                                children: [
                                  CheckedBox(),
                                  BigText(text: "Remember me", size: 15)
                                ],
                              )),
                              Flexible(
                                  child: TextButton(
                                onPressed: () {
                                  onPressedForgetPassword(context);
                                },
                                child: SmallText(
                                  text: "Forget password?",
                                ),
                              ))
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
                              onTap: () {
                                onPressedLogin(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(color: Colors.white),
                                    color: AppColors.iconColor1),
                                height: 50,
                                width: 350,
                                alignment: const Alignment(0, 0),
                                child: const Text("Log in",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                  child: const Text("Don't have an account? ")),
                              Flexible(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return Registration();
                                        }));
                                      },
                                      child: SmallText(
                                        text: "Sign Up",
                                        color: Colors.black,
                                        size: 15,
                                        fontWeight: FontWeight.w900,
                                      )))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
