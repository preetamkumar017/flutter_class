import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,

        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 10.0,
                shadowColor: Colors.white,
                margin: EdgeInsets.all(20),

                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Image.asset("assets/images/img.jpeg"),
                    Text("Flutter Image",style: TextStyle(fontSize: 35),)
                  ],
                ),
              ),

              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   height: MediaQuery.of(context).size.height*0.25,
              //   width: MediaQuery.of(context).size.width*0.50,
              //     color: Colors.deepPurpleAccent,
              //     child: Image.network("https://picsum.photos/200/300",
              //        fit: BoxFit.fill,
              //       height: 20,
              //
              //     )),
            ],
          ),
        ),
      ),
    );
  }
}
