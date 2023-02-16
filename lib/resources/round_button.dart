import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  var ontap;
  bool isLoading;
  double  fontSize;
  Color textColor;
  Color backgroundColor;
   RoundButton({
    Key? key,
    required this.text,
    required this.ontap,
     required this.fontSize,
     required this.textColor,
     required this.backgroundColor,
      this.isLoading = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
            style: TextButton.styleFrom(backgroundColor: backgroundColor),
            onPressed: ontap,
            child: Text(
              text,
              style:  TextStyle(color: textColor, fontSize: fontSize),
            )),
      ),
    );
  }
}

//
// 'Continue ' + '→'
// Navigator.push(context, MaterialPageRoute(builder: (context)=> HelloScreen()));