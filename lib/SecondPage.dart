import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                print("object");
              },
              title: Text("pkkdnfk"),

            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Second AppBar"),
      ),
      body:
      Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Go Back")),
      ),
    );
  }
}
