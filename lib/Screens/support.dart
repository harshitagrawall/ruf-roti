import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height* 0.03,),
          Card(
            shadowColor: Colors.blueGrey,
            elevation: 3.0,
            child: Container(
              decoration:  BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(6)
              ),
              width: width * 0.7,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children :  const  [
                  Text('Contact us at 1800-000-000', style: TextStyle(color: Colors.white),),Icon(Icons.call,color: Colors.white,),
                    ],
              ),
            ),
          ),
          SizedBox(height: height* 0.04,),
          Card(
            shadowColor: Colors.white10,
            elevation: 3.0,
            child: Container(
              decoration:  BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(6)
              ),
              width: width * 0.7,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children :   const[
                     Text('Whatsapp us at 07676767676', style: TextStyle(color: Colors.white)),
                    Icon(Icons.whatshot,color: Colors.white,),]
              ),),
          ),
          SizedBox(height: height* 0.04,),
          Card(
            shadowColor: Colors.white10,
            elevation: 3.0,
            child: Container(
              decoration:  BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(6)
              ),
              width: width * 0.7,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children :  const [
                    Text('Mail us on info@chalobazaar.com', style: TextStyle(color: Colors.white)), Icon(Icons.email,color: Colors.white,),]
              ),
            ),
          ),
          SizedBox(height: height* 0.04,),
          Card(
            shadowColor: Colors.white10,
            elevation: 3.0,
            child: Container(
              decoration:  BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(6)
              ),
              width: width * 0.7,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children :  const [
                    Text('Chalo Bazaar on web', style: TextStyle(color: Colors.white)),Icon(Icons.north_east_rounded,color: Colors.white,),
                    ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
