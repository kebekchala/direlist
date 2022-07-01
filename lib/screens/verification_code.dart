import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import 'login/login.dart';

class EmailVerificationCode extends StatefulWidget {
  const EmailVerificationCode({Key? key}) : super(key: key);

  @override
  State<EmailVerificationCode> createState() => _EmailVerificationCodeState();
}

class _EmailVerificationCodeState extends State<EmailVerificationCode> {
  bool _onEditing = true;
  String? _code;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          width: screenWidth * (3 / 4),
          child: Image.asset("assets/image/splash_login.png"),
        ),
        Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "Verification Code",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Please check your e-mail here to send a link to reset password',
                  style: TextStyle(fontSize: 14.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  width: 250,
                  height: 200,
                  child: Image.asset("assets/image/otp1.png"),
                ),
              ),
              VerificationCode(
                textStyle: const TextStyle(
                  fontSize: 10,
                ),
                fullBorder: true,
                keyboardType: TextInputType.number,
                underlineColor: Colors.amber,
                length: 4,
                cursorColor: Colors.blue,
                clearAll: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Clear all',
                    style: TextStyle(
                        fontSize: 14.0,
                        decoration: TextDecoration.underline,
                        color: Colors.blue[700]),
                  ),
                ),
                onCompleted: (String value) {
                  if (value == "1273") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  }

                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    _onEditing = value;
                  });
                  if (!_onEditing) FocusScope.of(context).unfocus();
                },
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: _onEditing
                      ? Text('Please enter full code')
                      : Text('Your code: $_code')),
            ],
          ),
        ),
      ]),
    );
  }
}
