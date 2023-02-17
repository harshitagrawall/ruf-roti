import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('About'),
      ),
      body:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal:
                    18.0),
                child: Text('Terms of Services',style: TextStyle(fontWeight: Color.buttonWeightHeavy),),
              ),
              Icon(Icons.navigate_next)
            ],
          ),
          const Divider(color: Color.greyColor, thickness: 1,),
          Row(
            children: const [Padding(
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 18.0),
              child: Text('App Version \n v17.3.1',style: TextStyle(fontWeight: Color.buttonWeightHeavy),),
            )],
          ),
          const Divider(color: Color.greyColor, thickness: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 16,horizontal: 18),
                  child: Text('Open Source Libraries',style: TextStyle(fontWeight: Color.buttonWeightHeavy),)),
              Icon(Icons.navigate_next)
            ],
          ),
          const Divider(color: Color.greyColor, thickness: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 18.0),
                child: Text('Licenses and Registration',style: TextStyle(fontWeight: Color.buttonWeightHeavy),),
              ),
              Icon(Icons.navigate_next)
            ],
          ),
          const Divider(color: Color.greyColor, thickness: 1,),
        ],
      ),
    );
  }
}
