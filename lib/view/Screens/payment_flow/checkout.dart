import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  var device_size, height, width, adress = '13485, 71Ave Surrey BC V3W 2k6';
  @override
  Widget build(BuildContext context) {
    // device_size = MediaQuery.of(context).size;
    device_size = MediaQuery.of(context).size;
    height = device_size.height;
    width = device_size.width;
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color.blackColor,
          ),
          backgroundColor: Color.whiteColor,
          title: Text(
            'Checkout',
            style: TextStyle(fontSize: 25, color: Color.grey400),
          ),
          centerTitle: true,
        ),
        body: Column(children: [
          Container(
            height: width / 2.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/map.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 13, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Your Delivery',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.greyColor,
                      fontWeight: Color.buttonWeight300),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 15, top: 5),
            child: Row(
              children: [
                const Icon(Icons.location_on),
                Text(
                  adress,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Color.greyColor,
                      fontWeight: Color.buttonWeight300),
                ),
              ],
            ),
          ),
          SizedBox(
            height: width / 4,
          ),
          Container(
            color: Color.blackColor,
            width: width,
            height: 1,
          ),
          SizedBox(
            height: width / 19.6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'View Bill',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color.greyColor),
                ),
                Icon(size: 30, Icons.arrow_drop_down)
              ],
            ),
          ),
          SizedBox(
            height: width / 39.2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Subtotal',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.greyColor),
                ),
                Text(
                  '\$26.25',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.greyColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Delivery Fee',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.greyColor),
                ),
                Text(
                  'Free',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.greyColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: width / 39.2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Bag fee INCL. GST/PST - Cents PST',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.greyColor),
                ),
                Text(
                  '\$0.28',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.greyColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Service Fee Tax - GST ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: Color.buttonWeight300,
                      color: Color.greyColor),
                ),
                Text(
                  '\$0.10',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: Color.buttonWeight300,
                      color: Color.greyColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: width / 13,
          ),
          Container(
            height: 1,
            width: width,
            color: Color.blackColor,
          ),
          SizedBox(
            height: width / 19.6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: Color.buttonWeight300,
                      color: Color.greyColor),
                ),
                Text(
                  '\$37.51',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: Color.buttonWeight300,
                      color: Color.greyColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: width / 9.8,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.buttonColorGrey),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => PaymentMethod()));

                      Utils.removeFocus(context);
                      Navigator.pushNamed(context, RoutesName.payment);
                    },
                    child:  const Text(
                      'Proceed To Pay',
                      style: TextStyle(color: Color.whiteColor,fontWeight: Color.buttonWeight, fontSize: 25),
                    )),
              ),
            ),
          ),
        ]));
  }
}
