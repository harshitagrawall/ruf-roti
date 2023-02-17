import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/resources/color.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';


class RotiAdda extends StatefulWidget {
  const RotiAdda({super.key});

  @override
  State<RotiAdda> createState() => _RotiAddaState();
}

class _RotiAddaState extends State<RotiAdda> {
  var device_size, height, width;
  final _restroName = 'Fruits';
  final _dishName = 'Carrot Fruit \$11';
  final _dishDetail = 'Truffle,herbs,garana padano,garli aioli';
  var _counter;

  @override
  Widget build(BuildContext context) {
    device_size = MediaQuery.of(context).size;
    height = device_size.height;
    width = device_size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(top: width / 4.9),
              child: Container(
                height: width / 3.92,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/rf logo.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: width / 39.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 19.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sabji Store',
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade400),
                      ),
                      Text(
                        'Southpoint Mall,Surrey',
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: width / 13,
                        width: width / 9.9,
                        // decoration: BoxDecoration(border: Border.all()),
                        color: Colors.grey.shade400,
                        child: const Center(
                          child: Text(
                            '4.3',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                      const Text(
                        'Reviews',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: width / 19.4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '30-32 min. | Free deleviery over \$15',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          var s = Detail(_dishName, _restroName, _dishDetail,_counter);
                          restroList.add(s);
                        });
                      },
                      child: const Icon(Icons.call)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: width / 39.2, bottom: width / 9.9),
              child: Container(
                height: 1,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            myFuction(),
          ],
        ),
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
                  Utils.removeFocus(context);
                  Navigator.pushNamed(context, RoutesName.orders);

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

class Detail {
   var _restroName, _dishName, _dishDetail,_counter;

  Detail(this._dishName, this._restroName, this._dishDetail,this._counter);
}

var restroList = [];

Widget myFuction() {
  var listView = ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: restroList.length,
      itemBuilder: ((BuildContext context, int index) {
        var counter = 0;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Text(
                restroList[index]._restroName,
                style: TextStyle(
                    fontSize: 34,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          restroList[index]._dishName,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          // maxLines: 2,
                          // overflow: TextOverflow.ellipsis,
                          restroList[index]._dishDetail,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          counter--;
                          print(counter);
                        },
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
                        onTap: () {
                          counter++;
                          print(counter);
                        },
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
            const SizedBox(
              height: 20,
            ),
          ],
        );
      }));
  return listView;
}
