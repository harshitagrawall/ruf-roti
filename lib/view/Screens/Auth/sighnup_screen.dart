import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/view/Screens/Auth/otp_screen.dart';
import 'package:wireframe_flaxen/resources/round_button.dart';

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
  FocusNode _nameFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _mobileFocusNode = FocusNode();
  FocusNode _confirmationFocusNode = FocusNode();

  late bool _passwordVisible = true;
  late bool _confirmationVisible = true;
  late bool mismatch = false;
  late bool _checked = false;

  @override
  Widget build(BuildContext context) {
   var _device_size = MediaQuery.of(context).size;
   var height = _device_size.height;
   var width = _device_size.width;
    return Scaffold(
      appBar: AppBar(

        iconTheme: const IconThemeData(
          color: Colors.grey
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Sign Up',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300),),
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
                      decoration:  InputDecoration(
                        fillColor: Colors.grey.shade900,
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Name",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter the name';
                        }
                        return null;
                      },
                      onFieldSubmitted: (val){
                        Utils.fieldFocusChange(_nameFocusNode, _mobileFocusNode, context);
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter mobile No.';
                        }
                        return null;
                      },
                      onFieldSubmitted: (val){
                        Utils.fieldFocusChange(_mobileFocusNode, _passwordFocusNode, context);
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter password';
                        }
                        return null;
                      },
                      onFieldSubmitted: (val){
                        Utils.fieldFocusChange(_passwordFocusNode, _confirmationFocusNode, context);
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
                        controller: cofirmationController,
                        onChanged: (value){
                          if(value != passwordController.text){
                            setState(() {
                              mismatch = true;
                            });
                          }else{
                            setState(() {
                              mismatch = false;
                            });
                          }
                        },
                        decoration: InputDecoration(
                            border:  OutlineInputBorder(
                              borderSide: BorderSide(
                                color: mismatch ? Colors.red : Utils.buttonColorBlue
                              ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
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
                                      color: Utils.greyColor,
                                    ))
                                  : const Icon(
                                      Icons.visibility,
                                      color: Utils.greyColor,
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
                  Padding(
                    padding:  EdgeInsets.only(right: width/2, left: 5,top: 5),
                    child: Text(mismatch ? Utils.mismatch : '',style: const TextStyle(color: Utils.redColor),),
                  ),
                ],
              )),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: RoundButton(
            textColor: Utils.whiteColor,
            fontSize: 20,
            backgroundColor: Utils.buttonColorBlue,
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
