import 'package:flutter/material.dart';
import 'package:picknpass/home_page.dart';

import 'locator.dart';

void main() {
    setupServices();

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
      home:  HomePage (),
    );
  }
}

