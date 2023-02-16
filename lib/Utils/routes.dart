// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wireframe_flaxen/view/Screens/Menu/about.dart';
import 'package:wireframe_flaxen/view/Screens/Auth/address.dart';
import 'package:wireframe_flaxen/view/Screens/payment_flow/checkout.dart';
import 'package:wireframe_flaxen/view/Screens/Delivery/delivery_status.dart';
import 'package:wireframe_flaxen/view/Screens/experience.dart';
import 'package:wireframe_flaxen/view/Screens/Auth/hello_screen.dart';
import 'package:wireframe_flaxen/view/Screens/Menu/help.dart';
import 'package:wireframe_flaxen/view/Screens/Home/home_screen.dart';
import 'package:wireframe_flaxen/view/Screens/Menu/menu.dart';
import 'package:wireframe_flaxen/view/Screens/Home/navigation.dart';
import 'package:wireframe_flaxen/view/Screens/Menu/order_history.dart';
import 'package:wireframe_flaxen/view/Screens/Home/orders.dart';
import 'package:wireframe_flaxen/view/Screens/payment_flow/payment.dart';
import 'package:wireframe_flaxen/view/Screens/payment_flow/payment_done.dart';
import 'package:wireframe_flaxen/view/Screens/Menu/profile.dart';
import 'package:wireframe_flaxen/view/Screens/payment_flow/rotiadda.dart';
import 'package:wireframe_flaxen/view/Screens/Home/search.dart';
import 'package:wireframe_flaxen/view/Screens/Auth/sighnup_screen.dart';
import 'package:wireframe_flaxen/view/Screens/Auth/signin_screen.dart';
import 'package:wireframe_flaxen/view/Screens/Auth/start_screen.dart';
import 'package:wireframe_flaxen/view/Screens/Menu/wallet.dart';
import 'package:wireframe_flaxen/view/Screens/payment_flow/your_order.dart';
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
