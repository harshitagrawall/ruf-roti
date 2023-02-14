import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Screens/delivery_status.dart';

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
            SizedBox(
              height: 50,
            ),
            Text('Payment Done',style: TextStyle(fontSize: 30,color: Colors.grey),),
            SizedBox(
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

            SizedBox(height: 30,),

            Text('Oreder Confirmed!',style: TextStyle(fontSize: 30,color: Colors.grey),),
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
                    backgroundColor: Colors.grey.shade400),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DeliveryStatus()));
                },
                child: const Text(
                  'Track Order',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
          ),
        ),
      ),
    );
  }
}
