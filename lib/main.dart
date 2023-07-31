import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondPage.dart';
import 'package:flutter_application_1/appbar_widget.dart';
import 'package:flutter_application_1/bnavi.dart';
import 'package:flutter_application_1/button_widget.dart';
import 'package:flutter_application_1/gread_widget.dart';
import 'package:flutter_application_1/image_widget.dart';
import 'package:flutter_application_1/stack_widget.dart';
import 'home_page.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sinha",
      home: SecondPage(),
    );
  }
}
