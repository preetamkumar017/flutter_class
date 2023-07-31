import 'package:flutter/material.dart';

class GreadWidget extends StatefulWidget {
  const GreadWidget({super.key});

  @override
  State<GreadWidget> createState() => _GreadWidgetState();
}

class _GreadWidgetState extends State<GreadWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("gread view"),
      ),
      body: GridView(
        gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(

          childAspectRatio: 1.0,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10.0,
          maxCrossAxisExtent: 150 ,

        ),
        children: [
          Image.network("https://picsum.photos/200/300"),
          Image.network("https://picsum.photos/200/300"),
          Image.network("https://picsum.photos/200/300"),
          Image.network("https://picsum.photos/200/300"),
          Image.network("https://picsum.photos/200/300"),
        ],

      ),
    );
  }
}
