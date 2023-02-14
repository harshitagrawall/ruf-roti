import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/Utils/routes.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WireFrame',
     // home: StartScreen(),
      initialRoute: RoutesName.start,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
