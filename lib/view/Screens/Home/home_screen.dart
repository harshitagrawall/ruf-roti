// import 'dart:ui';

// import 'package:flutter/widgets.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/data/response/status.dart';
import 'package:wireframe_flaxen/resources/color.dart';
import 'package:wireframe_flaxen/view_modal/home_view_modal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModal homeViewModal = HomeViewModal();
  var device_size, height, width;
  var location = 'Vijay Nagar, Indore';
  final searchController = TextEditingController();
  final double _review = 4.3;
  final String _restro = 'Sabji Store';
  final String _timing = "30-32 min. | Free delivery on order above \$15";

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeViewModal.fetchMovieList();
  }

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
                    prefixIcon: Icon(Icons.person),
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
                  ChangeNotifierProvider<HomeViewModal>(
                    create: (BuildContext context) => homeViewModal,
                    child: Consumer<HomeViewModal>(
                      builder: (context, value, _) {
                        switch (value.moviesList.status) {
                          case Status.LOADING:
                            return CircularProgressIndicator();
                          case Status.ERROR:
                            return Text(value.moviesList.message.toString());
                          case Status.COMPLETED:
                            return ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                itemCount:
                                    value.moviesList.data!.movies!.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // Navigator.push(context,
                                      //     MaterialPageRoute(builder: (context) => RotiAdda()));
                                      Utils.removeFocus(context);
                                      Navigator.pushNamed(
                                          context, RoutesName.afterhome);
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
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(value
                                                      .moviesList
                                                      .data!
                                                      .movies![index]
                                                      .posterurl
                                                      .toString(),
                                                  
                                                  ),
                                                fit: BoxFit.cover
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        height: width / 13,
                                                        width: width / 9.8,
                                                        // decoration: BoxDecoration(border: Border.all()),
                                                        color: Colors
                                                            .grey.shade300,
                                                        child: Center(
                                                          child: Text(
                                                            value
                                                                .moviesList
                                                                .data!
                                                                .movies![index]
                                                                .year
                                                                .toString()
                                                                .substring(
                                                                    2, 4),
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15),
                                                          ),
                                                        ),
                                                      ),
                                                      const Text('reviews'),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              top: 60,
                                              left: 20,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: width / 5.2,
                                                    width: width / 5.2,
                                                    child: Card(
                                                      elevation: 10,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                          image: NetworkImage(
                                                              value
                                                                  .moviesList
                                                                  .data!
                                                                  .movies![
                                                                      index]
                                                                  .posterurl
                                                                  .toString()),
                                                          fit: BoxFit.cover,
                                                        )),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: width / 39.2,
                                                  ),
                                                  Text(
                                                    value.moviesList.data!
                                                        .movies![index].title
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 17),
                                                  ),
                                                  const SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    _timing,
                                                    style: TextStyle(
                                                        color: Color.grey400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                        }
                        return Container();
                      },
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
