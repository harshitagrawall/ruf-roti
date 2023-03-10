import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wireframe_flaxen/resources/color.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/round_button.dart';
import 'package:provider/provider.dart';
import 'package:wireframe_flaxen/view_modal/auth_view_modal.dart';

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
    final authviewModal = Provider.of<AuthViewModal>(context);
    var device_size = MediaQuery.of(context).size;
    var width = device_size.width;
    var height = device_size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.greyColor),
        backgroundColor: Color.whiteColor,
        title: Text(
          'Sign In',
          style: TextStyle(
              color: Color.grey500, fontWeight: Color.buttonWeight300),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.emailAddress,
              focusNode: _emailFocusNode,
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: "Mobile No",
              ),
              onFieldSubmitted: (val) {
                Utils.fieldFocusChange(
                    _emailFocusNode, _passwordFocusNode, context);
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
                              color: Color.greyColor,
                            )
                          : const Icon(
                              Icons.visibility,
                              color: Color.greyColor,
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
                    child: Text(
                      'Forgot your password',
                      style: TextStyle(color: Color.grey500),
                    )),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            RoundButton(
                loading: authviewModal.loading,
                textColor: Color.whiteColor,
                fontSize: 20,
                backgroundColor: Color.buttonColorBlue,
                text: 'Sign In',
                ontap: () {
                  if (emailController.text.isEmpty) {
                    Utils.toastMessage('Please Enter Email');
                  } else if (passwordController.text.isEmpty) {
                    Utils.toastMessage('Please Enter Password');
                  } else if (passwordController.text.length < 3) {
                    Utils.toastMessage('Please Enter 6 digit Password');
                  } else {
                    Map data = {
                      'email': emailController.text.toString(),
                      // admin@mail.com
                      'password': passwordController.text.toString(),
                      // 12345
                    };
                    authviewModal.logInApi(data, context);
                    print('api hit');
                  }
                }),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.signup);
                },
                child: Text(
                  "Need An Account? Sign Up",
                  style: TextStyle(
                      color: Color.buttonColorGrey,
                      fontWeight: Color.buttonWeight400),
                )),
          ],
        ),
      ),
    );
  }
}
