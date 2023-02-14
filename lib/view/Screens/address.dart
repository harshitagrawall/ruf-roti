import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';


class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {

  final _formKey = GlobalKey<FormState>();
  final addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text('Add Address',style: TextStyle(fontWeight: FontWeight.normal),),
      ),
      body : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children : [
          Padding(
            padding : const EdgeInsets.all(8),
            child : TextFormField(
              key: _formKey,
              controller: addressController,
              decoration: const InputDecoration(
                prefixIcon:  Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                hintText: "Enter Address",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter the address';
                }
                return null;
              },
            )
          ),
          const Divider(color: Colors.grey, thickness: 4.0,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 4),
            child: Text('Nearby addresses',style: TextStyle(fontSize: 18),),
          ),
          GestureDetector(
            onTap: (){
              // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Home()), (route) => false);\
              Navigator.pushNamedAndRemoveUntil(context, RoutesName.navigationBar, (route) => false);
            },
            child: const ListTile(
              leading: Icon(Icons.near_me),
              title: Text('Use Current Location'),
              subtitle: Text('Enable location services'),
            )
          ),
          const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18,vertical: 4),
              child:  Text('We\'ll show you restaurants & hotels near by to pick up orders')),
        ]
      )
    );
  }
}
