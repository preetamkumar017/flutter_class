import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondPage.dart';
import 'package:flutter_application_1/button_widget.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/stack_widget.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tabs Demo'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat_bubble), text: "Chats"),
              Tab(icon: Icon(Icons.circle_outlined), text: "Status"),
              Tab(icon: Icon(Icons.call), text: "Call Log")
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            HomePage(),
            const SecondPage(),
            StackWidget()
          ],
        ),
      ),
    );
  }
}
