import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';


class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  var radioButtonValue = 'Credit Card';

  @override
  Widget build(BuildContext context) {
    int _groupValue = 1;
    var device_size = MediaQuery.of(context).size;
    var width = device_size.width;
    var height = device_size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Select Payment \n Method',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.grey.shade400,fontWeight: FontWeight.w200),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: width / 7.8,
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: width / 9.8, right: width / 16),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Container(
            //             height: 50,
            //             width: 50,
            //             decoration: const BoxDecoration(
            //               image: DecorationImage(
            //                 image: AssetImage('images/gpay.png'),
            //               ),
            //             ),
            //           ),
            //          const Padding(
            //             padding:  EdgeInsets.only(left: 30),
            //             child: Text('Google Pay'),
            //           ),
            //         ],
            //       ),
            //       Radio(
            //           value: 1,
            //           groupValue: 1,
            //           onChanged: (val) {
            //             setState(() {
            //               radioButtonValue = 'Google Pay';
            //
            //             });
            //           }),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: width / 9.8, right: width / 16),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Container(
            //             height: 50,
            //             width: 50,
            //             decoration: const BoxDecoration(
            //               image: DecorationImage(
            //                 image: AssetImage('images/apay.png'),
            //               ),
            //             ),
            //           ),
            //           const  Padding(
            //             padding: EdgeInsets.only(left: 30),
            //             child: Text('Apple Pay'),
            //           ),
            //         ],
            //       ),
            //       Radio(
            //           value: 1,
            //           groupValue: 0,
            //           onChanged: (val) {
            //             setState(() {
            //               radioButtonValue = 'Apple Pay';
            //             });
            //           }),
            //     ],
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(left: width / 9.8, right: width / 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/visa.png'),
                          ),
                        ),
                      ),
                      const  Padding(
                        padding:  EdgeInsets.only(left: 30),
                        child: Text('Credit Card'),
                      ),
                    ],
                  ),
                  Radio(
                      value: 1,
                      groupValue: radioButtonValue == 'Credit Card'? 1 : 0,
                      onChanged: (val) {
                        setState(() {
                          radioButtonValue = 'Credit Card';
                        });
                      }),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: width / 9.8, right: width / 16),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Container(
            //             height: 50,
            //             width: 50,
            //             decoration: const BoxDecoration(
            //               image: DecorationImage(
            //                 image: AssetImage('images/paypal.jpeg'),
            //               ),
            //             ),
            //           ),
            //           const  Padding(
            //             padding:  EdgeInsets.only(left: 30),
            //             child: Text('Paypal'),
            //           ),
            //         ],
            //       ),
            //       Radio(
            //           value: 1,
            //           groupValue: 0,
            //           onChanged: (val) {
            //             setState(() {
            //               radioButtonValue = 'Paypal';
            //             });
            //           }),
            //     ],
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(left: width / 9.8, right: width / 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/wallet.png'),
                          ),
                        ),
                      ),
                      const   Padding(
                        padding:  EdgeInsets.only(left: 30),
                        child: Text('Wallet Balance'),
                      ),
                    ],
                  ),
                  Radio(
                      value: 1,
                      groupValue: radioButtonValue == 'Wallet Balance'? 1 : 0,
                      onChanged: (val) {
                        setState(() {
                          radioButtonValue = 'Wallet Balance';
                        });
                      }),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width / 9.8, right: width / 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/cash.png'),
                          ),
                        ),
                      ),
                      const Padding(
                        padding:  EdgeInsets.only(left: 30),
                        child: Text('Cash'),
                      ),
                    ],
                  ),
                  Radio(
                      value: 1,
                      groupValue: radioButtonValue == 'Cash'? 1 : 0,
                      onChanged: (val) {
                        setState(() {
                          radioButtonValue = 'Cash';
                        });
                      }),
                ],
              ),
            ),
            SizedBox(
              height: width / 8,
            ),
            const Divider(thickness: 2,height: 1,),
            SizedBox(
              height: width / 13,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 9.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total \$37.51',
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade400),
                  ),
                  const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            SizedBox(
              height: width ,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Utils.buttonColorGrey),
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.paymentdone);
                      },
                      child: const Text(
                        'Confirm And Pay',
                        style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: Utils.buttonWeight),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget _myRadioButton(
//     {required String title, required int value, required var onChanged}) {
//   var _groupValue = 0;
//   return Expanded(
//     child: RadioListTile(
//       value: value,
//       groupValue: _groupValue,
//       onChanged: onChanged,
//       title: Text(title),
//     ),
//   );
// }
