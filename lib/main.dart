import 'package:flutter/material.dart';
import 'package:flutter_application_1/bnavi.dart';
import 'home_page.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sinha",
      home: Bnavi()
    );
  }
}
