import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Second AppBar"),
      ),
      drawer: Drawer(
        // backgroundColor: Colors.deepPurpleAccent,
        elevation: 50,
        // shadowColor: Colors.white,
        // width: MediaQuery.of(context).size.width,
        child: Column(
          children: [

            const UserAccountsDrawerHeader(
                accountName: Text("preetam Sinha"),
                accountEmail: Text("preetamkumar017@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/200/300")),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/200/300")),
                CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/200/300"))
              ],
            ),

            ListTile(
              leading:  const CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/200/300")),
              trailing: const Icon(Icons.arrow_forward),
              title: const Text("First",style: TextStyle(fontSize: 20),),
              subtitle: const Text("Subtitle"),
              onTap: () {
                log("hello");
              },
            ),
            const Divider(
              thickness: 3.0,
              color: Colors.red,
            ),
            ExpansionTile(
                title: const Text("Expansion Tile"),
              leading:  const CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/200/300")),

              children: [
                ListTile(
                  leading:  const CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/200/300")),
                  trailing: const Icon(Icons.arrow_forward),
                  title: const Text("First",style: TextStyle(fontSize: 20),),
                  subtitle: const Text("Subtitle"),
                  onTap: () {
                    log("hello");
                  },
                ),
                ListTile(
                  leading:  const CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/200/300")),
                  trailing: const Icon(Icons.arrow_forward),
                  title: const Text("First",style: TextStyle(fontSize: 20),),
                  subtitle: const Text("Subtitle"),
                  onTap: () {
                    log("hello");
                  },
                ),
              ],
            )
          ],
        ) ,
      ),
      body:
      Center(
        child: ElevatedButton(
            onPressed: () {
              // Fluttertoast.showToast(msg: "click",fontSize: 40,
              //     backgroundColor: Colors.red,
              //     textColor: Colors.yellow,
              //     gravity: ToastGravity.CENTER);

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your Text"),
                    TextButton(onPressed: (){
                      log("undo");
                    }, child: Text("Undo"))
                  ],
                ),
                duration: Duration(seconds: 3),

              ));
              log("Clicked");

            },
            child: const Text("Click me")),
      ),
    );
  }
}
