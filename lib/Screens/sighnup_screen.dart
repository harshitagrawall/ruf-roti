import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wireframe_flaxen/Screens/otp_screen.dart';
import 'package:wireframe_flaxen/Utils/round_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final contactController = TextEditingController();
  final passwordController = TextEditingController();
  final cofirmationController = TextEditingController();
  late bool _passwordVisible = true;
  late bool _confirmationVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: "Name",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              keyboardType: TextInputType.number,
              controller: contactController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: "Mobile No:-",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: passwordController,
              obscureText: _passwordVisible,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Password",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    child: _passwordVisible
                        ? (const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ))
                        : const Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: Colors.white12,
              child: TextField(
                obscureText: _confirmationVisible,
                controller: cofirmationController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Confirm Password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _confirmationVisible = !_confirmationVisible;
                        });
                      },
                      child: _confirmationVisible
                          ? (const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ))
                          : const Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                    )),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 130,
          // ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundButton(
                    text: 'Create Account',
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OtpScreen(
                                  mobController:
                                      contactController.text.toString())));
                    }),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
