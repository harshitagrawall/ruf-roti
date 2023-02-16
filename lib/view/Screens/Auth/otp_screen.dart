import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';

// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:wireframe_flaxen/resources/round_button.dart';

class OtpScreen extends StatefulWidget {
  var mobController;

  OtpScreen({
    super.key,
    required this.mobController,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                            'Otp Sent on :- ${widget.mobController}',
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
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Mobile No:-",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter otp';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundButton(
                      textColor: Utils.whiteColor,
                      fontSize: 20,
                      backgroundColor: Utils.buttonColorBlue,
                      text: 'Submit',
                      ontap: () {
                        if (_formKey.currentState!.validate()) {
                          // Navigator.pushAndRemoveUntil(context,
                          //     MaterialPageRoute(
                          //   builder: (BuildContext context) {
                          //     return const AddressScreen();
                          //   },
                          // ), (route) => false);
                          Navigator.pushNamedAndRemoveUntil(
                              context, RoutesName.address, (route) => false);
                        }
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}
