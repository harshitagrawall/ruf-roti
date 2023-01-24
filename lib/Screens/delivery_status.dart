import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Screens/experience.dart';

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
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Delivery Status',
          style: TextStyle(fontSize: 25, color: Colors.grey.shade400),
        ),
        centerTitle: true,
      ),
      body: Column(
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Estimated Time  of Delviery',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                ),
                Text(
                  '9:20PM',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              width: width,
              height: 120,
              child: Card(
                color: Colors.grey.shade300,
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
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Hritik Roshan    ',
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          ),
                          const Text(
                            'Your Delivery Guy',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          const Text(
                            // maxLines: 4,
                            // overflow: TextOverflow.ellipsis,
                            'Hritik Roshan wants to be an successfull engineer and repay the '
                            'loan he has taken from the bank. Help Hritik fulfill his dream',
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: Icon(Icons.call),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          SizedBox(
            height: 40,
          ),
          Container(
            height: 1,
            color: Colors.black,
            width: width,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('  Track Your Order',style: TextStyle(fontSize: 22,color: Colors.grey.shade400),),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(

                  children: [
                    Radio(
                        value: 1, groupValue: 1, onChanged: (val){
                      setState(() {
                        radioButtonValue = 'Order Confirmed';
                      });
                    }),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order Confirmed',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                        Text('Your Order has been recieved',style: TextStyle(color: Colors.grey.shade300),)
                      ],
                    )
                  ],
                ),
                Row(

                  children: [
                    Radio(
                        value: 1, groupValue: 1, onChanged: (val){
                      setState(() {
                        radioButtonValue = 'Order Confirmed';
                      });
                    }),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order is being prepared',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                        Text('Your food is getting prepared',style: TextStyle(color: Colors.grey.shade300),)
                      ],
                    )
                  ],
                ),
                Row(

                  children: [
                    Radio(
                        value: 1, groupValue: 1, onChanged: (val){
                      setState(() {
                        radioButtonValue = 'Order Confirmed';
                      });
                    }),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order Prepared',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                        Text('Your Food has been prepared',style: TextStyle(color: Colors.grey.shade300),)
                      ],
                    )
                  ],
                ),
                Row(

                  children: [
                    Radio(
                        value: 1, groupValue: 1, onChanged: (val){
                      setState(() {
                        radioButtonValue = 'Order Confirmed';
                      });
                    }),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivery in process',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                        Text('Hang on your food is on the way',style: TextStyle(color: Colors.grey.shade300),)
                      ],
                    )
                  ],
                ),
                Row(

                  children: [
                    Radio(
                        value: 1, groupValue: 1, onChanged: (val){
                      setState(() {
                        radioButtonValue = 'Order Confirmed';
                      });
                    }),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivery Successfuly done',style: TextStyle(fontSize: 15,color: Colors.grey.shade400),),
                        Text('Enjoy your food',style: TextStyle(color: Colors.grey.shade300),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
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
                          builder: (context) => const Experience()));
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
