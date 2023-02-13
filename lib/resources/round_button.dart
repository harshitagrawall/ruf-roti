import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  var ontap;

   RoundButton({
    Key? key,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
            onPressed: ontap,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            )),
      ),
    );
  }
}

//
// 'Continue ' + '→'
// Navigator.push(context, MaterialPageRoute(builder: (context)=> HelloScreen()));