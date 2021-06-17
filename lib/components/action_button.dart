import 'package:flutter/material.dart';
import 'package:hangman_flutter/utilities/constants.dart';

class ActionButton extends StatelessWidget {
  ActionButton({this.buttonTitle, this.onPress});

  final Function onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(kActionButtonColor),
        backgroundColor: MaterialStateProperty.all<Color>(kActionButtonHighlightColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide.none,
          ),
        ),
      ),

      onPressed: onPress,
      child: Text(
        buttonTitle,
        style: kActionButtonTextStyle,
      ),
    );
  }
}
