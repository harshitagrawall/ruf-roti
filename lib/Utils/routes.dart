// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/view/Screens/about.dart';
import 'package:wireframe_flaxen/view/Screens/address.dart';
import 'package:wireframe_flaxen/view/Screens/checkout.dart';
import 'package:wireframe_flaxen/view/Screens/delivery_status.dart';
import 'package:wireframe_flaxen/view/Screens/experience.dart';
import 'package:wireframe_flaxen/view/Screens/hello_screen.dart';
import 'package:wireframe_flaxen/view/Screens/help.dart';
import 'package:wireframe_flaxen/view/Screens/home_screen.dart';
import 'package:wireframe_flaxen/view/Screens/menu.dart';
import 'package:wireframe_flaxen/view/Screens/navigation.dart';
import 'package:wireframe_flaxen/view/Screens/order_history.dart';
import 'package:wireframe_flaxen/view/Screens/orders.dart';
import 'package:wireframe_flaxen/view/Screens/payment.dart';
import 'package:wireframe_flaxen/view/Screens/payment_done.dart';
import 'package:wireframe_flaxen/view/Screens/profile.dart';
import 'package:wireframe_flaxen/view/Screens/rotiadda.dart';
import 'package:wireframe_flaxen/view/Screens/search.dart';
import 'package:wireframe_flaxen/view/Screens/sighnup_screen.dart';
import 'package:wireframe_flaxen/view/Screens/signin_screen.dart';
import 'package:wireframe_flaxen/view/Screens/start_screen.dart';
import 'package:wireframe_flaxen/view/Screens/wallet.dart';
import 'package:wireframe_flaxen/view/Screens/your_order.dart';
import 'package:wireframe_flaxen/Utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutesName.start:
        return MaterialPageRoute(
            builder: (BuildContext context) => const StartScreen());
      case RoutesName.signIn:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen());
      case RoutesName.hello:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HelloScreen());
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpScreen());
      case RoutesName.address:
        return MaterialPageRoute(
            builder: (BuildContext context) => const AddressScreen());
      case RoutesName.orderHistory:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OrderHistory());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.afterhome:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RotiAdda());
      case RoutesName.orders:
        return MaterialPageRoute(
            builder: (BuildContext context) => const YourOrder());
      case RoutesName.navigationBar:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  Home());
      case RoutesName.checkout:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Checkout());
      case RoutesName.payment:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PaymentMethod());
      case RoutesName.paymentdone:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PaymentDone());
      case RoutesName.experience:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Experience());
      case RoutesName.searchscreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SearchScreen());
      case RoutesName.recentorder:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RecentOrders());
      case RoutesName.menu:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Menu());
      case RoutesName.wallet:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WalletScreen());
      case RoutesName.about:
        return MaterialPageRoute(
            builder: (BuildContext context) => const About());
      case RoutesName.help:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Help());
      case RoutesName.profile:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileScreen());
      case RoutesName.deliverystatus:
        return MaterialPageRoute(
            builder: (BuildContext context) => const DeliveryStatus());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No Routes Found')),
          );
        });
    }
  }
}
