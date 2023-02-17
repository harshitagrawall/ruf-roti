import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            height: size.height * 0.36,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.width * 0.15,
                  color: Color.buttonColorBlue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Update your Wallet',
                          style: TextStyle(
                              color: Color.whiteColor, fontWeight: Color.buttonWeightHeavy),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                '0.0',
                                style: TextStyle(color: Color.whiteColor),
                              )),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.account_balance_wallet,
                              color: Color.whiteColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: amountController,
                        keyboardType: const TextInputType.numberWithOptions(
                          signed: false,
                          decimal: false,
                        ),
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.currency_rupee_outlined),
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color.buttonColorBlue,
                            ))),
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  amountController.value =  TextEditingValue(text: amountController.text == '' ? '1000' :(int.parse(amountController.text) + 1000).toString());
                                });
                              },
                              child: const Text('+1000')),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  amountController.value =  TextEditingValue(text: amountController.text == '' ? '2000' :(int.parse(amountController.text) + 2000).toString());
                                });
                              }, child: const Text('+2000')),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  amountController.value =  TextEditingValue(text: amountController.text == '' ? '5000' :(int.parse(amountController.text) + 5000).toString());
                                });
                              }, child: const Text('+5000'))
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color.buttonColorBlue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          width: double.infinity,
                          child: const Text(
                              textAlign: TextAlign.center,
                              'Add money to wallet',
                              style: TextStyle(
                                  color: Color.whiteColor,
                                  fontWeight:Color.buttonWeightHeavy)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
