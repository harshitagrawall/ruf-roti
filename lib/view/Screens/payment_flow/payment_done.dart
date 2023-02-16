import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';


class PaymentDone extends StatefulWidget {
  const PaymentDone({Key? key}) : super(key: key);

  @override
  State<PaymentDone> createState() => _PaymentDoneState();
}

class _PaymentDoneState extends State<PaymentDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const SizedBox(
              height: 50,
            ),
            const Text('Payment Done',style: TextStyle(fontSize: 30,color: Colors.grey),),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 150,

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/done.png'),
                ),
              ),
            ),

            const SizedBox(height: 30,),

            const Text('Order Confirmed!',style: TextStyle(fontSize: 30,color: Colors.grey),),
          ],
        ),
      ),
      bottomNavigationBar:   Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.buttonColorGrey),
                onPressed: () {
                  Utils.removeFocus(context);
                  Navigator.pushNamed(context, RoutesName.deliverystatus);
                },
                child: const Text(
                  'Track Order',
                  style: TextStyle(color: Colors.white, fontWeight: Color.buttonWeight, fontSize: 25),
                )),
          ),
        ),
      ),
    );
  }
}
