import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';

import 'package:wireframe_flaxen/resources/round_button.dart';

class YourOrder extends StatefulWidget {
  const YourOrder({super.key});

  @override
  State<YourOrder> createState() => _YourOrderState();
}

class _YourOrderState extends State<YourOrder> {
  var device_size, height, width;
  var _dishName = 'Crispy Yam Fries', counter = 0, _price = '\$9.35';

  @override
  Widget build(BuildContext context) {
    device_size = MediaQuery.of(context).size;
    height = device_size.height;
    width = device_size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Your Order',
          style: TextStyle(fontSize: 25, color: Colors.grey.shade400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: width / 19.6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (() {
                      setState(() {
                        var s = Price(_dishName, _price, counter);
                        priceList.add(s);
                      });
                    }),
                    child: Text('Items')),
                Text('Qty        Items'),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 1,
            color: Colors.black,
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: width / 39.2,
          ),
          myFuction(),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextButton(
                style:
                    TextButton.styleFrom(backgroundColor: Color.buttonColorGrey),
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.checkout);
                },
                child: const Text(
                  'total amount 26.65\$',
                  style: TextStyle(color: Colors.white,fontWeight: Color.buttonWeight, fontSize: 25),
                )),
          ),
        ),
      ),
    );
  }
}

var priceList = [];

class Price {
  var _dishName, _price, counter;

  Price(this._dishName, this._price, this.counter);
}

Widget myFuction() {
  var listView = ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: priceList.length,
      itemBuilder: ((BuildContext context, int index) {
        var counter = 0;
        return Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          child: Container(
            width: double.infinity,
            height: 60,
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${priceList[index]._dishName}',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(
                          '$counter        ${priceList[index]._price}',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.indeterminate_check_box,
                          color: Colors.grey,
                          size: 25,
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(left: 5, right: 5, bottom: 2),
                        height: 22,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(child: Text('$counter')),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.add_box,
                          size: 25,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }));
  return listView;
}
