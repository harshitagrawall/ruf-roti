import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  var radioButtonValue = 'Google Pay';
  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Google pay'),
                  Text('Google Pay'),
                  Radio(

                      value: 1,
                      groupValue: 1,
                      onChanged: (val) {
                        setState(() {
                          radioButtonValue = 'Google pay';
                        });
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
