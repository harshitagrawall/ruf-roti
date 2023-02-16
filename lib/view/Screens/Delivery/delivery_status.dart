import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';

class DeliveryStatus extends StatefulWidget {
  const DeliveryStatus({Key? key}) : super(key: key);

  @override
  State<DeliveryStatus> createState() => _DeliveryStatusState();
}

class _DeliveryStatusState extends State<DeliveryStatus> {
  @override
  Widget build(BuildContext context) {
    var radioButtonValue = '';
    var device_size = MediaQuery.of(context).size;
    var width = device_size.width;
    var height = device_size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color.blackColor,
        ),
        backgroundColor: Color.whiteColor,
        title: Text(
          'Delivery Status',
          style: TextStyle(fontSize: 25, color: Color.grey400),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Estimated Time  of Delivery',
                    style: TextStyle(fontSize: 15, color: Color.grey400),
                  ),
                  Text(
                    '9:20PM',
                    style: TextStyle(fontSize: 15, color: Color.grey400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: width,
                height: 120,
                child: Card(
                  color: Color.grey200,
                  elevation: 10,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 90,
                              width: 50,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                image: DecorationImage(
                                  image: AssetImage('images/ritik.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Hritik Roshan    ',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.star,size: 20,),
                                Icon(Icons.star,size: 20,),
                                Icon(Icons.star,size: 20,),
                                Icon(Icons.star,size: 20,),
                              ],
                            ),
                            const Text(
                              'Your Delivery Guy',
                              style:
                                  TextStyle(fontSize: 12, color: Color.greyColor),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              // maxLines: 4,
                              // overflow: TextOverflow.ellipsis,
                              'Hritik Roshan wants to be an successful engineer and repay the '
                              'loan he has taken from the bank. Help Hritik fulfill his dream',
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4,left: 4),
                            child: Icon(Icons.phone_in_talk,size: 20,),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 1,
              color: Color.blackColor,
              width: width,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '  Track Your Order',
                        style: TextStyle(
                            fontSize: 22, color: Color.grey400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Row(
                  //
                  //   children: [
                  //     Radio(
                  //         value: 1, groupValue: 1, onChanged: (val){
                  //       setState(() {
                  //         radioButtonValue = 'Order Confirmed';
                  //       });
                  //     }),
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text('Order Confirmed',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                  //         Text('Your Order has been recieved',style: TextStyle(color: Colors.grey.shade300),)
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // Row(
                  //
                  //   children: [
                  //     Radio(
                  //         value: 1, groupValue: 1, onChanged: (val){
                  //       setState(() {
                  //         radioButtonValue = 'Order Confirmed';
                  //       });
                  //     }),
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text('Order is being prepared',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                  //         Text('Your food is getting prepared',style: TextStyle(color: Colors.grey.shade300),)
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // Row(
                  //
                  //   children: [
                  //     Radio(
                  //         value: 1, groupValue: 1, onChanged: (val){
                  //       setState(() {
                  //         radioButtonValue = 'Order Confirmed';
                  //       });
                  //     }),
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text('Order Prepared',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                  //         Text('Your Food has been prepared',style: TextStyle(color: Colors.grey.shade300),)
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // Row(
                  //
                  //   children: [
                  //     Radio(
                  //         value: 1, groupValue: 1, onChanged: (val){
                  //       setState(() {
                  //         radioButtonValue = 'Order Confirmed';
                  //       });
                  //     }),
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text('Delivery in process',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                  //         Text('Hang on your food is on the way',style: TextStyle(color: Colors.grey.shade300),)
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // Row(
                  //
                  //   children: [
                  //     Radio(
                  //         value: 1, groupValue: 1, onChanged: (val){
                  //       setState(() {
                  //         radioButtonValue = 'Order Confirmed';
                  //       });
                  //     }),
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text('Delivery Successfully done',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                  //         Text('Enjoy your food',style: TextStyle(color: Colors.grey.shade300),)
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  Container(
                    margin: EdgeInsets.only(right : MediaQuery.of(context).size.width * 0.15),
                    child: Column(
                        children: <Widget>[
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        isFirst: true,
                        indicatorStyle: const IndicatorStyle(
                          width: 10,
                          color: Color.buttonColorBlue,
                          padding: EdgeInsets.all(10),
                        ),
                        endChild: const _RightChild(
                          title: 'Order Placed',
                          message: 'We have received your order.',
                        ),
                        beforeLineStyle: const LineStyle(
                          color: Color.buttonColorBlue,
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        indicatorStyle: const IndicatorStyle(
                          width: 10,
                          color: Color.buttonColorBlue,
                          padding: EdgeInsets.all(10),
                        ),
                        endChild: const _RightChild(
                          title: 'Order Confirmed',
                          message: 'Your order has been confirmed.',
                        ),
                        beforeLineStyle: const LineStyle(
                          color: Color.buttonColorBlue,
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        indicatorStyle: const IndicatorStyle(
                          width: 10,
                          color: Color.buttonColorBlue,
                          padding: EdgeInsets.all(10),
                        ),
                        endChild: const _RightChild(
                          title: 'Order Processed',
                          message: 'We are preparing your order.',
                        ),
                        beforeLineStyle: const LineStyle(
                          color: Color.buttonColorBlue,
                        ),
                        afterLineStyle: const LineStyle(
                          color: Color.blackColor,
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.1,
                        isLast: true,
                        indicatorStyle: const IndicatorStyle(
                          width: 10,
                          color: Color.whiteColor,
                          padding: EdgeInsets.all(10),
                        ),
                        endChild: const _RightChild(
                          disabled: true,
                          title: 'Ready to Pickup',
                          message: 'Your order is ready for pickup.',
                        ),
                        beforeLineStyle: const LineStyle(
                          color:Color.whiteColor,
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextButton(
                style:
                    TextButton.styleFrom(backgroundColor: Color.buttonColorGrey),
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const Experience()));
                  Utils.removeFocus(context);
                  Navigator.pushNamed(context, RoutesName.experience);
                },
                child: const Text(
                  'Track Order',
                  style: TextStyle(color: Color.whiteColor,fontWeight: Color.buttonWeight, fontSize: 25),
                )),
          ),
        ),
      ),
    );
  }
}

class _RightChild extends StatelessWidget {
  const _RightChild({
    Key? key,
    required this.title,
    required this.message,
    this.disabled = false,
  }) : super(key: key);

  final String title;
  final String message;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: Row(
        children: <Widget>[
          const SizedBox(width: 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.yantramanav(
                  color: disabled
                      ?  Color.whiteColor
                      :  Color.whiteColor,
                  fontSize: 18,
                  fontWeight: Color.buttonWeightHeavy,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                message,
                style: GoogleFonts.yantramanav(
                  color: disabled
                      ? Color.whiteColor
                      : Color.whiteColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
