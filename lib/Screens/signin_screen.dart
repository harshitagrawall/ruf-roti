import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wireframe_flaxen/Screens/sighnup_screen.dart';
import 'package:wireframe_flaxen/Utils/round_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: "Mobile No:-",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: "Password",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    style: const ButtonStyle(
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {},
                    child: const Text('Forgot your password')),
              ],
            ),
            // const SizedBox(
            //   height: 150,
            // ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RoundButton(text: 'Sign In', ontap: () {}),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: const Text("Need An Account? Sign Up")),
                ],
              ),
            ),

            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
