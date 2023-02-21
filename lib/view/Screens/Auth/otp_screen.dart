import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';

// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:wireframe_flaxen/resources/round_button.dart';
import 'package:wireframe_flaxen/view_modal/auth_view_modal.dart';

class OtpScreen extends StatefulWidget {
  var contactController, name, password, otpController;

  OtpScreen({
    super.key,
    required this.contactController,
    required this.name,
    required this.password,
    required this.otpController,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final enterOtp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authviewModal = Provider.of<AuthViewModal>(context);
    // print(widget.mobController);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Verify Otp'),
        ),
        body: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17, top: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Otp Sent on :- ${widget.contactController}',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      controller: enterOtp,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText:
                              'please enter otp :- ${widget.otpController}'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundButton(
                      textColor: Color.whiteColor,
                      fontSize: 20,
                      backgroundColor: Color.buttonColorBlue,
                      text: 'Submit',
                      ontap: () {
                        if (enterOtp != widget.otpController) {
                          Utils.toastMessage('Please check entered Otp');
                        } else if (enterOtp.text.isEmpty) {
                          Utils.toastMessage('Please enter Otp');
                        } else {
                          Map data = {
                            // required this.contactController,
                            // required this.name,
                            // required this.password,
                            // required this.otpController,
                            'name': widget.name.text.toString(),
                            // admin@mail.com
                            'password': widget.password.text.toString(),
                            // 12345
                            'phone': widget.contactController.text.toString(),
                          };
                          authviewModal.signUpApi(data, context);
                          print(data);
                        }
                        Utils.removeFocus(context);
                        Navigator.pushNamedAndRemoveUntil(
                            context, RoutesName.address, (route) => false);
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}
