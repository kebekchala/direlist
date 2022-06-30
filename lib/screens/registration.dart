import 'package:direlist/custom/input_decoration.dart';
import 'package:direlist/custom/toast_component.dart';
import 'package:direlist/screens/login.dart';
import 'package:direlist/screens/verification_code.dart';
import 'package:direlist/utils/colors.dart';
import 'package:direlist/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:toast/toast.dart';


class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  //String _register_by = "email"; // phone or email
  String initialCountry = "ETH";
  PhoneNumber phoneCode = PhoneNumber(isoCode: "ETH", dialCode: "+251");
  String _phone = "";

  // Controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void initState(){
    // On Splash Screen hide statusBar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  void dispose(){
    // before going to other screen show status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.top,
      SystemUiOverlay.bottom
    ]);
    super.dispose();
  }

  onPressSignUp(BuildContext context)  {
    var name = _nameController.text.toString();
    var email = _emailController.text.toString();
    var password = _passwordController.text.toString();
    var passwordConfirm = _passwordConfirmController.text.toString();
    var phone = _phoneNumberController.text.toString();

    if(name == ""){
      ToastComponent.showDialog("Enter your Name",context, gravity: Toast.center, duration: Toast.lengthLong);
      return;
    }else if(email == ""){
      ToastComponent.showDialog("Enter your Email", context,gravity: Toast.center, duration: Toast.lengthLong);
      return;
    }else if(password == ""){
      ToastComponent.showDialog("Enter your Password",context, gravity: Toast.center, duration: Toast.lengthLong);
      return;
    }else if(passwordConfirm == ""){
      ToastComponent.showDialog("Enter your Confirm Password",context, gravity: Toast.center, duration: Toast.lengthLong);
      return;
    }else if(password.length < 6){
      ToastComponent.showDialog("Enter your Name", context,gravity: Toast.center, duration: Toast.lengthLong);
      return;
    }else if(password != passwordConfirm){
      ToastComponent.showDialog("Enter your Password doesn't math",context, gravity: Toast.center, duration: Toast.lengthLong);
      return;
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return const EmailVerificationCode();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
   // final _screen_height = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:  Colors.white,
      body: Stack(
        children: [
          SizedBox(
            width: screenWidth * (3 / 4),
            child: Image.asset("assets/image/splash_login.png"),
          ),
          Container (
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 15),
                    child: Container(
                      width: 180,
                      height: 100,
                      child: Image.asset("assets/image/logo.png"),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(bottom: 20.0),
                    child: SmallText(text:"Join",size: 18,fontWeight: FontWeight.w600,)
                  ),
                  Container(
                    width: screenWidth * (3 / 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: SmallText(
                            text: "Enter your Name",
                            color: AppColors.mainBalckColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: TextField(
                            controller: _nameController,
                            autofocus: false,
                            decoration: InputDecorations.buildInputDecoration_1(
                              hint_text: "Kebek chala"),
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: SmallText(
                            text: "Enter Email",
                            color: AppColors.mainBalckColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: TextField(
                            controller: _emailController,
                            autofocus: false,
                            decoration: InputDecorations.buildInputDecoration_1(
                              hint_text: "kebek@gmail.com"
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: SmallText(
                            text: "Enter PhoneNumber",
                            color: AppColors.mainBalckColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Column (
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InternationalPhoneNumberInput(
                                onInputChanged: (PhoneNumber number){
                                  print(number.phoneNumber);
                                  setState((){
                                    _phone = number.phoneNumber!;
                                  });
                                },
                                onInputValidated: (bool value){
                                  print(value);
                                },
                                selectorConfig: const SelectorConfig(
                                  selectorType: PhoneInputSelectorType.DIALOG
                                ),
                                ignoreBlank: false,
                                autoValidateMode: AutovalidateMode.disabled,
                                selectorTextStyle: const TextStyle(color: Colors.grey),
                                initialValue: phoneCode,
                                textFieldController: _phoneNumberController,
                                formatInput: true,
                                keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
                                inputDecoration: InputDecorations.buildInputDecoration_1(
                                  hint_text: "9402 214 90"
                                ),
                                onSaved: (PhoneNumber number){
                                  print('on Saved: $number');
                                },

                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: SmallText(
                            text:"Enter Password",
                            color: AppColors.mainBalckColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 36,
                                child: TextField(
                                  controller: _passwordController,
                                  autofocus: false,
                                  obscureText: true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  decoration: InputDecorations.buildInputDecoration_1(
                                    hint_text: "************"
                                  ),
                                ),
                              ),
                              SmallText(text: "Password must contain at least 6 characters",color: AppColors.mainBalckColor, fontWeight: FontWeight.w600,)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: SmallText(
                            text:"Retype Password",
                            color: AppColors.mainBalckColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Container(
                            height: 36,
                            child: TextField(
                              controller: _passwordConfirmController,
                              autocorrect: false,
                              autofocus: false,
                              obscureText: true,
                              enableSuggestions: false,
                              decoration: InputDecorations.buildInputDecoration_1(
                                hint_text: "************"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child:  Center(
                              child: Padding(
                                padding:const EdgeInsets.only(bottom:20),
                                child: GestureDetector(
                                  onTap: (){
                                    onPressSignUp(context);
                                  },
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                            color: Colors.white
                                        ),
                                        color: AppColors.iconColor1
                                    ),
                                    width: 350,
                                    alignment: const Alignment(0,0),
                                    child: const Text(
                                        "Register",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold
                                        )
                                    ),

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
          ),
        ],
      ),

    ) ;
  }
}
