import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/Utils/utils.dart';
import 'package:wireframe_flaxen/resources/color.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color.blackColor,
          ),
          backgroundColor:Color.whiteColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    Navigator.pushNamed(context, RoutesName.profile);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Card(
                      color: Color.grey100,
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Mansi Shah',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.grey500),
                                ),
                                Text(
                                  'mansishah26032gmail.com',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Color.grey500),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'View Activity',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color.grey500),
                                    ),
                                    const Icon(
                                        size: 10, Icons.arrow_forward_ios),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                 CircleAvatar(
                                   radius:31,
                                   backgroundColor: Color.buttonColorGrey,
                                   child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color.whiteColor,
                                    child:  Icon(size: 50, Icons.person,color: Color.buttonColorGrey,),
                                ),
                                 ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    Navigator.pushNamed(context, RoutesName.orderHistory);
                  },
                  child: const ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Your Order History'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    Navigator.pushNamed(context, RoutesName.wallet);
                  },
                  child: const ListTile(
                    leading: Icon(Icons.account_balance_wallet_outlined),
                    title: Text('Wallet'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    Navigator.pushNamed(context, RoutesName.about);
                  },
                  child: const ListTile(
                    leading: Icon(Icons.assignment_late_outlined),
                    title: Text('About'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ListTile(
                  leading: Icon(Icons.contact_support_outlined),
                  title: Text('Support'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    Utils.removeFocus(context);
                    Navigator.pushNamed(context, RoutesName.help);
                  },
                  child: const ListTile(
                    leading: Icon(Icons.contact_support_outlined),
                    title: Text('Help'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: ListTile(
                  leading: Icon(Icons.power_settings_new_outlined),
                  title: Text('Logout'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ));
  }
}
