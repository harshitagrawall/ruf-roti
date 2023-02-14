import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: _width * 0.24),
        child: Column(
          children: [
            InkWell(
              onTap: (){
              },
              child: const Text(
                'Edit your Profile',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                const CircleAvatar(
                  radius: 35.0,
                  child: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    Icons.edit,
                    size: 16,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: _width * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Name',
                      style: TextStyle(color: Colors.grey, fontSize: 11)),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: _width * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Mansi Shah',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              indent: _width * 0.2,
              endIndent: _width * 0.2,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: _width * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Email',
                      style: TextStyle(color: Colors.grey, fontSize: 11)),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: _width * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Mansi2606@gmail.com',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
              indent: _width * 0.2,
              endIndent: _width * 0.2,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: _width * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Contact',
                      style: TextStyle(color: Colors.grey, fontSize:11)),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: _width * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('9807807088',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
              indent: _width * 0.2,
              endIndent: _width * 0.2,
            )
          ],
        ),
      ),
    );
  }
}
