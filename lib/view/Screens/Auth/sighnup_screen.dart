import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';
import 'package:wireframe_flaxen/view/Screens/Auth/otp_screen.dart';
import 'package:wireframe_flaxen/resources/round_button.dart';
import 'package:wireframe_flaxen/view_modal/auth_view_modal.dart';

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
  final confirmationController = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _mobileFocusNode = FocusNode();
  final FocusNode _confirmationFocusNode = FocusNode();

  late bool _passwordVisible = true;
  late bool _confirmationVisible = true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    contactController.dispose();
    passwordController.dispose();
    confirmationController.dispose();

    _nameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _mobileFocusNode.dispose();
    _confirmationFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authviewModal = Provider.of<AuthViewModal>(context);
    var _device_size = MediaQuery.of(context).size;
    var height = _device_size.height;
    var width = _device_size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
        ),
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
                      focusNode: _nameFocusNode,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade900,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Name",
                      ),
                      onFieldSubmitted: (val) {
                        Utils.fieldFocusChange(
                            _nameFocusNode, _mobileFocusNode, context);
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
                      focusNode: _mobileFocusNode,
                      controller: contactController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Mobile No",
                      ),
                      onFieldSubmitted: (val) {
                        Utils.fieldFocusChange(
                            _mobileFocusNode, _passwordFocusNode, context);
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
                      focusNode: _passwordFocusNode,
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
                      onFieldSubmitted: (val) {
                        Utils.fieldFocusChange(_passwordFocusNode,
                            _confirmationFocusNode, context);
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
                        focusNode: _confirmationFocusNode,
                        controller: confirmationController,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10))),
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
                                      color: Color.greyColor,
                                    ))
                                  : const Icon(
                                      Icons.visibility,
                                      color: Color.greyColor,
                                    ),
                            )),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: RoundButton(
            loading: authviewModal.signUpLoading,
            textColor: Color.whiteColor,
            fontSize: 20,
            backgroundColor: Color.buttonColorBlue,
            text: 'Create Account',
            ontap: () {
              if (nameController.text.isEmpty) {
                Utils.toastMessage('Please Enter Name');
              } else if (contactController.text.isEmpty) {
                Utils.toastMessage('Please Enter Mobile No.');
              } else if (contactController.text.length < 10) {
                Utils.toastMessage('Please Enter 10 Digit Mobile No.');
              } else if (passwordController.text.toString() !=
                  confirmationController.text.toString()) {
                Utils.toastMessage('Sorry! Password Mismatch');
              } else if (passwordController.text.isEmpty) {
                Utils.toastMessage('Please Enter Password');
              } else if (passwordController.text.length < 3) {
                Utils.toastMessage('Please Enter 6 digit Password');
              } else {
                Map data = {
                  'email': nameController.text.toString(),
                  // admin@mail.com
                  'password': passwordController.text.toString(),
                  // 12345
                  // 'phone': contactController.text.toString(),
                };
                authviewModal.signUpApi(data, context);
                // print(data);
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OtpScreen(
                                  mobController:
                                  contactController.text.toString())));
              }
              // if (_formKey.currentState!.validate()) {
              //   Navigator.push(
              //       context,
              //       MaterialPte(ageRou
              //           builder: (context) => OtpScreen(
              //               mobController:
              //               contactController.text.toString())));
              // }
            }),
      ),
    );
  }
}
