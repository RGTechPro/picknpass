import 'package:flutter/material.dart';
import 'package:picknpass/home_page.dart';
import 'package:picknpass/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'locator.dart';

void main() async{
   setupServices();
   WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage (),
    );
  }
}

