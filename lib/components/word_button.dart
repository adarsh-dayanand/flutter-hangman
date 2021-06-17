import 'package:flutter/material.dart';
import 'package:hangman_flutter/utilities/constants.dart';

class WordButton extends StatelessWidget {
  WordButton({this.buttonTitle, this.onPress});

  final Function onPress;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(kActionButtonHighlightColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide.none
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          buttonTitle,
          textAlign: TextAlign.center,
          style: kWordButtonTextStyle,
         ),
      ),
    );
  }
}
