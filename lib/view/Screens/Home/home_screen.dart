// import 'dart:ui';

// import 'package:flutter/widgets.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var device_size, height, width;
  var location = 'Vijay Nagar, Indore';
  final searchController = TextEditingController();
  final double _review = 4.3;
  final String _restro = 'Sabji Store';
  final String _timing = "30-32 min. | Free delivery on order above \$15";

  @override
  Widget build(BuildContext context) {
    device_size = MediaQuery.of(context).size;
    height = device_size.height;
    width = device_size.width;

// 14.5 = 27
// 39.2 = 10
// 4.9 = 80
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: width / 4.9, left: width / 14.5, bottom: width / 39.2),
              child: Row(
                children: const [
                  Text(
                    'Delivery ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pick-Up',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 14.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    location,
                    style: const TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  const CircleAvatar(
                    child: Icon(Icons.person),
                  )
                ],
              ),
            ),
            SizedBox(
              height: width / 29.9,
            ),
            Container(
              width: double.infinity,
              color: Colors.blueGrey.shade100,
              height: width / 78.4,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                controller: searchController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    // icon: Icon(Icons.search),
                    hintText: 'Search Cuisines, Restaurants, Stores or Items',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            SizedBox(
              height: width / 29.9,
            ),
            Image(
              height: width / 2.45,
              width: double.infinity,
              image: const AssetImage('images/rf logo.jpeg'),
            ),
            SizedBox(
              height: width / 29.9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  height: width / 5.6,
                  width: width / 5.6,
                  image: const AssetImage('images/rf logo.jpeg'),
                ),
                Image(
                  height: width / 5.6,
                  width: width / 5.6,
                  image: const AssetImage('images/rf logo.jpeg'),
                ),
                Image(
                  height: width / 5.6,
                  width: width / 5.6,
                  image: const AssetImage('images/rf logo.jpeg'),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: width / 5.6,
                  width: width / 5.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.arrow_right),
                      Text('View All'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: width / 78.4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 19.6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Popular Restaurants near you',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: width / 39.2,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => RotiAdda()));
                      Navigator.pushNamed(context, RoutesName.afterhome);
                    },
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: width / 1.96,
                        width: double.infinity,
                        // color: Colors.yellow,
                        child: Stack(
                          children: [
                            Container(
                              height: width / 3.92,
                              width: double.infinity,
                              // color: Colors.grey,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/rf logo.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              height: width / 39.2,
                            ),
                            Positioned(
                              top: 110,
                              right: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: width / 13,
                                        width: width / 9.8,
                                        // decoration: BoxDecoration(border: Border.all()),
                                        color: Colors.grey.shade300,
                                        child: Center(
                                          child: Text(
                                            '$_review',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                      const Text('Reviews'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 60,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: width / 5.2,
                                    width: width / 5.2,
                                    child: Card(
                                      elevation: 10,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                              'images/another roti.jpeg'),
                                          fit: BoxFit.cover,
                                        )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: width / 39.2,
                                  ),
                                  Text(
                                    _restro,
                                    style: const TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    _timing,
                                    style:
                                        TextStyle(color: Utils.grey400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => RotiAdda()));
                      Navigator.pushNamed(context, RoutesName.afterhome);
                    },
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: width / 1.96,
                        width: double.infinity,
                        // color: Colors.yellow,
                        child: Stack(
                          children: [
                            Container(
                              height: width / 3.92,
                              width: double.infinity,
                              // color: Colors.grey,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/rf logo.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                // shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              height: width / 39.2,
                            ),
                            Positioned(
                              top: 110,
                              right: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: width / 13,
                                        width: width / 9.8,
                                        // decoration: BoxDecoration(border: Border.all()),
                                        color: Colors.grey.shade300,
                                        child: const Center(
                                          child: Text(
                                            '4.9',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                      const Text('Reviews'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 60,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: width / 5.2,
                                    width: width / 5.2,
                                    child: Card(
                                      elevation: 10,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                              'images/roti_image.jpeg'),
                                          fit: BoxFit.cover,
                                        )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: width / 39.2,
                                  ),
                                  const Text(
                                    'The Morder Restro',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    _timing,
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
