import 'package:provider/provider.dart';
import 'package:wireframe_flaxen/data/network/get_current_location_service.dart';
import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/modal/location_modal.dart';
import 'package:wireframe_flaxen/resources/color.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  var lattitude;
  var longitude;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getLocation();
  // }
  //

  // Future<String> getLocation() async {
  // var details = await GetLoacation().getCurrentLocation();
  //   return details;
  //   return details;
  //
  // }

  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final getLocations = Provider.of<GetLoacation>(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Color.whiteColor,
          centerTitle: true,
          title: const Text(
            'Add Address',
            style: TextStyle(
                color: Color.greyColor, fontWeight: Color.buttonWeight),
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Color.buttonColorGrey,
                      fontWeight: Color.buttonWeight),
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search for an Address",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter the address';
                  }
                  return null;
                },
              )),
          Divider(
            color: Color.buttonColorGrey,
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 4),
            child: Text(
              'Nearby addresses',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.buttonColorGrey,
                  fontWeight: Color.buttonWeight),
            ),
          ),
          GestureDetector(
               onTap: () {
                  // getLocations.getCurrentLocation();
              // String hello =  await getLocation();
              //   var hello = await getLocation();
              //   print(hello);
              //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Home()), (route) => false);
              //    Navigator.pushNamedAndRemoveUntil(
              //        context, RoutesName.home, (route) => false);
                Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.navigationBar, (route) => false);
              },
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20),
                  child: Icon(
                    Icons.near_me,
                    color: Color.grey900,
                  ),
                ),
                title: Text(
                  'Use Current Location',
                  style: TextStyle(
                      color: Color.buttonColorGrey,
                      fontWeight: Color.buttonWeight),
                ),
                subtitle: Text(
                  'Enable location services',
                  style: TextStyle(
                      color: Color.buttonColorGrey,
                      fontWeight: Color.buttonWeight),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 34, right: 24),
              child: Text(
                'We\'ll show you restaurants & hotels near by to pick up orders',
                style: TextStyle(
                    color: Color.buttonColorGrey,
                    fontWeight: Color.buttonWeight),
              )),
        ]));
  }
}
