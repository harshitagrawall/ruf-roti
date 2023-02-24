import 'package:wireframe_flaxen/data/network/get_current_location_service.dart';
import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/resources/color.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wireframe_flaxen/view/Screens/Home/navigation.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  // var lattitude;
  // var longitude;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getLocation();
  // }
  //
  // Future<String> getLocation() async {
  // var details = await GetLoacation().getCurrentLocation();
  //
  //   return details;
  //   return details;
  //
  // }

  late GoogleMapController mapController;

  String address = '';

  // late  LatLng _center = const LatLng(22.719568, 75.857727);
  //
  // void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  // }

  final addressController = TextEditingController();

  @override
  void dispose() {
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Color.whiteColor,
          centerTitle: true,
          title: const Text(
            'Add Address',
            style: TextStyle(
                color: Color.greyColor, fontWeight: Color.buttonWeightHeavy),
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  focusColor: Color.buttonColorGrey,
                  hintStyle: TextStyle(
                      color: Color.buttonColorGrey,
                      fontWeight: Color.buttonWeightHeavy),
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
                  fontWeight: Color.buttonWeightHeavy),
            ),
          ),
          GestureDetector(
              onTap: () async {
                // String hello =  await getLocation();
                var position = await GetLocation().getCurrentLocation();

                setState(() {
                  address = position;
                });

                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Home()), (route) => false);
                // Navigator.pushNamedAndRemoveUntil(
                //     context, RoutesName.navigationBar, (route) => false);
              },
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20),
                  child: Icon(
                    Icons.near_me,
                    color: Color.buttonColorGrey,
                  ),
                ),
                title: Text(
                  'Use Current Location',
                  style: TextStyle(
                      color: Color.buttonColorGrey,
                      fontWeight: Color.buttonWeightHeavy),
                ),
                subtitle: Text(
                  'Enable location services',
                  style: TextStyle(
                      color: Color.buttonColorGrey,
                      fontWeight: Color.buttonWeightHeavy),
                ),
              )),
          const Padding(
              padding:  EdgeInsets.only(top: 10, left: 24, right: 24),
              child:  Text(
                'We\'ll show you restaurants & hotels near by to pick up orders',
                style: TextStyle(
                    color: Color.blackColor,
                    fontWeight: Color.buttonWeightHeavy),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 24),
            child: Center(
                child: address == '' ? Container() : Card(
                  elevation: 9,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  address,
                  style: TextStyle(
                      color: Color.grey900,
                      fontWeight: Color.buttonWeightHeavy),
                ),
              ),
            )),
          ),
          // Container(
          //   padding: const EdgeInsets.all(20),
          //   height: 350,
          //   width: 400,
          //   child: GoogleMap(
          //       onMapCreated: _onMapCreated,
          //       initialCameraPosition: CameraPosition(
          //         target: _center,
          //         zoom: 11.0,
          //       ),
          //     ),
          // ),
        ]));
  }
}
