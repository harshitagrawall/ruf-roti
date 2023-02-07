import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Screens/payment_done.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  var radioButtonValue = 'Google Pay';

  @override
  Widget build(BuildContext context) {
    int _groupValue = -1;
    var device_size = MediaQuery.of(context).size;
    var width = device_size.width;
    var height = device_size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Select Payment Method',
          style: TextStyle(fontSize: 25, color: Colors.grey.shade400),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: width / 7.8,
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
                            image: AssetImage('images/gpay.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Google Pay'),
                      ),
                    ],
                  ),
                  _myRadioButton(
                    title: 'GooglePay',
                    value: 0,
                    onChanged: (newValue) {
                      setState(() {
                        _groupValue = newValue;
                      });
                    },
                  )
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
                            image: AssetImage('images/apay.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Apple Pay'),
                      ),
                    ],
                  ),
                  Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (val) {
                        setState(() {
                          radioButtonValue = 'Apple Pay';
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
                            image: AssetImage('images/visa.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Credit Card'),
                      ),
                    ],
                  ),
                  Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (val) {
                        setState(() {
                          radioButtonValue = 'Credit Card';
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
                            image: AssetImage('images/paypal.jpeg'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Paypal'),
                      ),
                    ],
                  ),
                  Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (val) {
                        setState(() {
                          radioButtonValue = 'Paypal';
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
                            image: AssetImage('images/wallet.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Wallet Balance'),
                      ),
                    ],
                  ),
                  Radio(
                      value: 1,
                      groupValue: 1,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('Cash'),
                      ),
                    ],
                  ),
                  Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (val) {
                        setState(() {
                          radioButtonValue = 'Cash';
                        });
                      }),
                ],
              ),
            ),
            SizedBox(
              height: width / 6,
            ),
            Container(
              color: Colors.black,
              height: 1,
              width: width,
            ),
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
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            SizedBox(
              height: width / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade400),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Confrimation()));
                      },
                      child: const Text(
                        'Confirm And Pay',
                        style: TextStyle(color: Colors.white, fontSize: 25),
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

Widget _myRadioButton(
    {required String title, required int value, required var onChanged}) {
  var _groupValue = 0;
  return RadioListTile(
    value: value,
    groupValue: _groupValue,
    onChanged: onChanged,
    title: Text(title),
  );
}
