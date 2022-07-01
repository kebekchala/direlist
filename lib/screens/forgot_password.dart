import 'package:direlist/screens/verification_code.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import '../custom/input_decoration.dart';
import '../custom/toast_component.dart';
import '../utils/colors.dart';
import '../widgets/small_text.dart';
import 'login/login.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    onSend(context) {
      var email = emailController.text.toString();
      if (email == "") {
        ToastComponent.showDialog("Enter your Email", context,
            gravity: Toast.center, duration: Toast.lengthLong);
        return;
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EmailVerificationCode();
        }));
      }
    }

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
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
              )
            ],
          ),
        ),
        elevation: 0,
      ),
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
                      width: 200,
                      height: 60,
                      child: Image.asset("assets/image/logo.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SmallText(
                        text: "Forgotten Password",
                        size: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mainBalckColor),
                  ),
                  Container(
                    width: screenWidth * (3 / 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Please enter your e-mail here so we can send you an email to rest your password",
                          style: TextStyle(fontSize: 12),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 8.0),
                          child: SizedBox(
                            width: 300,
                            height: 150,
                            child: Image.asset("assets/image/reset.png"),
                          ),
                        ),
                        Padding(
                            padding:
                                const EdgeInsets.only(bottom: 4.0, top: 15.0),
                            child: Text(
                              "E-mail",
                              style: TextStyle(color: AppColors.mainBalckColor),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, top: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 36,
                                child: TextField(
                                    controller: emailController,
                                    autofocus: false,
                                    decoration:
                                        InputDecorations.buildInputDecoration_1(
                                            hint_text: "kebek@gmail.com")),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: GestureDetector(
                                onTap: () {
                                  onSend(context);
                                },
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(color: Colors.white),
                                      color: AppColors.iconColor1),
                                  width: 350,
                                  alignment: const Alignment(0, 0),
                                  child: const Text("Send",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
