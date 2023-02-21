import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wireframe_flaxen/Utils/routes.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';
import 'package:wireframe_flaxen/data/network/get_current_location_service.dart';
import 'package:wireframe_flaxen/view_modal/auth_view_modal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModal()),
        ChangeNotifierProvider(create: (_) => GetLoacation()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WireFrame',
        // home: StartScreen(),
        initialRoute: RoutesName.start,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
