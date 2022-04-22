import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/navy_bottom_bar.dart';
import 'package:loginpage/phone_number_screen.dart';
import 'package:loginpage/weather.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FarmEasy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  PhoneNumberScreen(),
    );
  }
}


