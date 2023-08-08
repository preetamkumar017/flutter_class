import 'dart:developer';

import 'package:flutter/material.dart';
import 'SecondPage.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController name = TextEditingController();
  bool pass = true;

  @override
  void initState() {
    super.initState();
    name.text = "Preetam sinha";
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page App Bar"),
      ),
      body: Container(
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [

            Row(
              children: [

                Expanded(child:
                TextFormField(
                  decoration:  const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Enter Name',
                    hintText: 'Enter Your Name',
                    contentPadding: EdgeInsets.all(20),
                  ),
                  style: const TextStyle(
                      fontSize: 25
                  ),

                ),),

                Expanded(child:
                TextFormField(
                  decoration:  const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Enter Name',
                    hintText: 'Enter Your Name',
                    contentPadding: EdgeInsets.all(20),
                  ),
                  style: const TextStyle(
                      fontSize: 25
                  ),

                ),),
                Expanded(child:
                TextFormField(
                  decoration:  const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Enter Name',
                    hintText: 'Enter Your Name',
                    contentPadding: EdgeInsets.all(20),
                  ),
                  style: const TextStyle(
                      fontSize: 25
                  ),

                ),),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:  TextFormField(
                decoration:  InputDecoration(
                  suffixIcon: InkWell(
                      onTap: () {
                        pass = !pass;
                        print(pass);
                        setState(() {

                        });
                      },
                      child: pass ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility)) ,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                    labelText: 'Enter Name',
                    hintText: 'Enter Your Name',
                  contentPadding: const EdgeInsets.all(20),
                ),
                style: const TextStyle(
                  fontSize: 25
                ),
                autofocus: true,
                keyboardType: TextInputType.name,
                controller: name,
                // enabled: false,
                readOnly: true,
                obscureText: pass,
                obscuringCharacter: '#',
                
              ),
            ),
            const SizedBox(
              height: 20,
            ),

              Center(

                child: Tooltip(
                  message: "this is my tool tip",
                  onTriggered: (){
                    log("message");
                  },
                  triggerMode: TooltipTriggerMode.tap,
                  showDuration: Duration(milliseconds: 500),

                  child: Text(
              "first page",

              style: TextStyle(
                    fontSize: 35,
                    color: Colors.purple,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    // letterSpacing: 8,
                    // wordSpacing: -20,
                    backgroundColor: Colors.yellow,
                    shadows: [
                      Shadow(
                          color: Colors.blueAccent,
                          offset: Offset(2, 1),
                          blurRadius: 10)
                    ]),
            ),
                )),
            RichText(
              text: const TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Sign up',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                    ),
                    TextSpan(
                      text: ' Sign up',
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                    ),
                  ]),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    print(name.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                        ));
                  },
                  child: const Text("Go to Next Page")),
            )
          ],
        ),
      ),
    );
  }
}
