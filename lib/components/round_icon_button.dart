import 'package:flutter/material.dart';
import 'package:app_testing/input_page.dart';

class RoundIconButton extends StatelessWidget {

  final IconData? icon;
  final Function()? buttonPress;
  const RoundIconButton({super.key,this.icon, this.buttonPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      elevation: 6.0,
      fillColor: const Color(0xff4c4f5e),
      constraints: const BoxConstraints.tightFor(width: 60.0,height: 60.0),
      onPressed: (){
        buttonPress?.call();
      },
      child: Icon(icon),
    );
  }
}
