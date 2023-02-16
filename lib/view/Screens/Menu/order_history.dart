import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';


class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.0,vertical: 8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search by Shop or Item',
                      hintStyle: const TextStyle(fontWeight: Utils.buttonWeightHeavy,color: Utils.greyColor),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.red,
                      ),
                      suffixIcon: const Icon(Icons.mic, color: Utils.redColor),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade50)))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                elevation: 6,
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Utils.greyColor, width: 0.2)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: ListTile(
                          leading: const CircleAvatar(
                              child: Icon(Icons.emoji_food_beverage)),
                          title: const Text('Apna Sweets',style: TextStyle(height: 1.5,fontSize: 15,fontWeight: Utils.buttonWeightHeavy),),
                          subtitle: const Text(
                              'Old Palasia, Indore\n24 mins',style: TextStyle(height: 1.5,fontSize: 12,fontWeight: Utils.buttonWeightHeavy),),
                          trailing: Stack(children: [
                            OutlinedButton(
                                onPressed: () {}, child: const Text('Delivered'))
                          ]),
                        )),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width :0.2 ,color: Utils.grey400)),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 8,right: 8,top: 8
                                ),
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: _width * 0.04),
                                  child: const Text(
                                    '2 x Apples',
                                    style: TextStyle(fontWeight: Utils.buttonWeightHeavy,fontSize: 12,),
                                  ),
                                ),
                                const SizedBox(height: 6,),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: _width * 0.04),
                                  child: const Text('2 x Tomatoes',
                                      style: TextStyle(fontWeight: Utils.buttonWeightHeavy,fontSize: 12,)),
                                )
                              ],
                            ),
                          ),
                           Divider(color: Utils.greyColor,thickness : 0.3,indent: _width * 0.03,endIndent: _width * 0.03,),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: _width * 0.05,
                                        right: _width * 0.1,
                                        bottom: 2),
                                    child:  Text('10th Feb 2023 at 12:50 pm',
                                        style: TextStyle(fontSize: 12,color: Utils.buttonColorGrey))),
                                Padding(
                                  padding: EdgeInsets.only(right: _width * 0.075),
                                  child: const Text('₹ 126.65',
                                      style: TextStyle(fontWeight: Utils.buttonWeightHeavy,fontSize: 12,)),
                                ),
                              ],
                            ),
                          ),
                           Divider(color: Utils.greyColor,thickness: 0.5,indent: _width * 0.03,endIndent: _width * 0.03,),
                          Container(
                              padding:  EdgeInsets.symmetric(vertical: 6,horizontal: _width * 0.05),
                              child: Row(
                                children:  [
                                  const Text('Rate',style: TextStyle(color: Utils.redColor,fontWeight: Utils.buttonWeightHeavy),),
                                  SizedBox(width: _width *0.02,),
                                  RatingBar.builder(
                                    initialRating: 0,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, index) {
                                      switch (index) {
                                        case 0:
                                          return const Padding(
                                            padding:  EdgeInsets.all(12.0),
                                            child:  Icon(
                                              Icons.star_border,
                                              size: 30,
                                            ),
                                          );
                                        case 1:
                                          return  const Padding(
                                            padding:  EdgeInsets.all(12.0),
                                            child: Icon(
                                              Icons.star_border,
                                              size: 30,
                                            ),
                                          );
                                        case 2:
                                          return const Padding(
                                            padding:  EdgeInsets.all(12.0),
                                            child:  Icon(
                                              Icons.star_border,
                                              size: 30,
                                            ),
                                          );
                                        case 3:
                                          return  const Padding(
                                            padding:  EdgeInsets.all(12.0),
                                            child: Icon(
                                              Icons.star_border,
                                              size: 30,
                                            ),
                                          );
                                        case 4:
                                          return const Padding(
                                            padding:  EdgeInsets.all(12.0),
                                            child:  Icon(
                                              Icons.star_border,
                                              size: 30,
                                            ),
                                          );
                                        default:
                                          return Container();
                                      }
                                    },
                                    onRatingUpdate: (rating) {
                                      setState(() {
                                        print(rating);
                                      });
                                    },
                                  ),

                                ],
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
