import 'package:flutter/material.dart';
import 'package:mthr_flutter/screen/forgotpassowrd.dart';
import 'package:mthr_flutter/screen/for.dart';
import 'package:mthr_flutter/screen/homepage.dart';
import 'package:mthr_flutter/screen/order.dart';
import 'package:mthr_flutter/screen/myhome.dart';
import 'Screen/welcome.dart';
import 'Screen/login.dart';
import 'Screen/signup.dart';
import 'screen/forgotpassowrd.dart';
import 'Screen/home.dart';
import 'Screen/aboutus.dart';
import 'Screen/sender.dart';
import 'Screen/orders.dart';
import 'Screen/ord.dart';





void main() {
  runApp( MyApp(

  ));
}

class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => const Welcome(),
        "/Login" : (context) =>  Login(),
      "/Signup" : (context) =>  Signup(),
      "/ForgotPassword" : (context) =>  ForgotPassword(),
      "/Home" : (context) => const Home(),
      "/Aboutus" : (context) => const Aboutus(),
      "/HomePage" : (context) =>  HomePage(),
      "/Order" : (context) =>  Order(),
      "/Orders" : (context) =>  Orders(),
      "/Sender" : (context) =>  Sender(),
      "/MyHome" : (context) => MyHome(),
      "/Ord" : (context) =>  Ord(),
      "/For" : (context) => For(),

    }
    );

    }
}
