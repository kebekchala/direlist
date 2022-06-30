import 'package:direlist/utils/colors.dart';
import 'package:flutter/material.dart';

class CheckedBox extends StatefulWidget {
   CheckedBox({Key? key}) : super(key: key);


  @override
  State<CheckedBox> createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states){
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused
      };
      if( states.any(interactiveStates.contains)){
        return Colors.redAccent;
      }
      return AppColors.iconColor1;
    }
    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith((getColor)),
      value: isChecked,
      onChanged: (bool? value){
        setState((){
          isChecked = value!;
        });
      },
    );
  }
}
