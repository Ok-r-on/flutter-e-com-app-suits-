import 'package:flutter/material.dart';
import 'package:lets_suit_up/pages/HomeAdmin.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lets_suit_up/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'pages/ProductAdmin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await Hive.initFlutter();
  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lets Suit Up',
      routes: {
        '/adminhome' : (context) => const Homeadmin(),
        '/adminproduct' : (context) => const Productadmin(),
      },
      home: LoginPage(),
      //home:HiddenDrawer(),
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueGrey, // Blue Grey buttons
          textTheme: ButtonTextTheme.primary,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blueGrey,
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xFFE0E0E0)),
          backgroundColor: Colors.blueGrey,
          titleTextStyle: TextStyle(
            color: Color(0xFFE0E0E0),
            fontSize: 18,
            fontWeight: FontWeight.bold
          )
        )
        ),
    );
  }
}