import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wireframe_flaxen/Utils/routes.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/round_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _passwordVisible = true;
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var device_size = MediaQuery.of(context).size;
    var width = device_size.width;
    var height = device_size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Utils.greyColor
        ),
        backgroundColor: Utils.whiteColor,
        title:  Text('Sign In',style: TextStyle(color: Utils.grey500,fontWeight: Utils.buttonWeight300),),
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
              focusNode: _emailFocusNode,
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: "Mobile No",
              ),
              onFieldSubmitted: (val){
                Utils.fieldFocusChange(_emailFocusNode, _passwordFocusNode, context);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: _passwordVisible,
                focusNode: _passwordFocusNode,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  hintText: "Password",
                  suffix: GestureDetector(
                      onTap: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                      child: _passwordVisible
                          ? const Icon(
                              Icons.visibility_off,
                              color: Utils.greyColor,
                            )
                          : const Icon(
                              Icons.visibility,
                              color: Utils.greyColor,
                            ))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    style: const ButtonStyle(
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {},
                    child:  Text('Forgot your password',style: TextStyle(color: Utils.grey500),)),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            RoundButton( textColor: Utils.whiteColor,
                fontSize: 20,
                backgroundColor: Utils.buttonColorBlue,text: 'Sign In', ontap: () {}),
            TextButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const SignUpScreen()));
                  Navigator.pushNamed(context, RoutesName.signup);
                },
                child:  Text("Need An Account? Sign Up",style: TextStyle(color: Utils.buttonColorGrey,fontWeight: Utils.buttonWeight400),)),
          ],
        ),
      ),
    );
  }
}
