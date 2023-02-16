import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,left: 8.0),
                    child: Column(
                      children:  [
                        Row(
                          children: [
                            Text('Delivery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color.buttonColorGrey),),
                            const Text('pickup',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 22,color: Colors.grey))
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Text('134572 Avenue',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 22,color: Colors.grey))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,right: 8.0),
                    child: Column(
                      children:  [CircleAvatar(
                        radius: 24,
                        backgroundColor:Color.buttonColorGrey,child: const Icon(Icons.person,color: Color.whiteColor,size: 35,),)],
                    ),
                  )
                ],
              ),
               SizedBox(
                height: MediaQuery.of(context).size.height *0.015,
              ),
                Divider(color: Colors.grey.shade400,),
                TextFormField(
                  controller: _searchController,
                  decoration:  const InputDecoration(
                    hintText: 'Search cuisines and items',
                    prefixIcon:  Icon(Icons.search_sharp),
                    suffixIcon: Icon(Icons.mic),
                    border:  OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1.0,
                            color: Color.greyColor
                        )
                    ),
                  ),
                ),
              Divider(color: Color.grey400,),
               Card(
                   child: ListTile(
                     leading:  Image.network('https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834'),
                     title: Text('Apples',style: TextStyle(fontWeight: Color.buttonWeight400,fontSize: 16,color: Color.grey900)),
                     subtitle: Text('Fruit',style: TextStyle(fontWeight: Color.buttonWeight,fontSize: 12,color: Color.grey500)),
                   )
               ),

            ],
          )),
    );
  }
}
