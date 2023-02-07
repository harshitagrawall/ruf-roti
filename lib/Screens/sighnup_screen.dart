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

  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final contactController = TextEditingController();
  final passwordController = TextEditingController();
  final cofirmationController = TextEditingController();
  late bool _passwordVisible = true;
  late bool _confirmationVisible = true;

  @override
  Widget build(BuildContext context) {
   var _device_size = MediaQuery.of(context).size;
   var height = _device_size.height;
   var width = _device_size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Name",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter the name';
                        }
                        return null;
                      },
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Mobile No:-",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter mobile No.';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: _passwordVisible,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter password';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      color: Colors.white12,
                      child: TextFormField(
                        obscureText: _confirmationVisible,
                        controller: cofirmationController,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 're-enter password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: RoundButton(
            text: 'Create Account',
            ontap: () {
              print(height);
              print(width);
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OtpScreen(
                            mobController:
                            contactController.text.toString())));
              }
            }),
      ),
    );
  }
}
