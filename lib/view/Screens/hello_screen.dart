import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/resources/round_button.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hello!'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                alignment: Alignment.topCenter,
                // color: Colors.grey,
                width: double.infinity,
                child: const Image(
                  width: double.infinity,
                  image: AssetImage('images/rf logo.jpeg'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          RoundButton(
              text: 'Sign In',
              ontap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SignInScreen()));
                Navigator.pushNamed(context, RoutesName.signIn);
              }),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'OR',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(
            height: 15,
          ),
          RoundButton(
              text: 'Sign Up',
              ontap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SignUpScreen()));
                Navigator.pushNamed(context, RoutesName.signup);
              }),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
