import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class GetWidgetView extends StatefulWidget {
  const GetWidgetView({super.key});

  @override
  State<GetWidgetView> createState() => _GetWidgetViewState();
}

class _GetWidgetViewState extends State<GetWidgetView> {
  @override
  Widget build(BuildContext context) {

    final List<String> imageList = [
      "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Get Widgets"),
        actions: [

          GFIconBadge(
            child: GFIconButton(
              onPressed: (){},
              icon: Icon(Icons.ac_unit),
              size: 10,
            ),
            counterChild: GFBadge(
              text: "12",

            ),
          ),

        ],
      ),
      drawer:
      GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
              ),
              otherAccountsPictures: <Widget>[
                Image(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
                  fit: BoxFit.cover,
                ),
                GFAvatar(
                  child: Text("ab"),
                )
              ],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('user name'),
                  Text('user@userid.com'),
                ],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: null,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: null,
            ),
          ],
        ),
      ),


      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignmen
        shrinkWrap: true,
        children: [

          GestureDetector(
              onTap: () => GFToast.showToast(
                  'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                  context,
                  toastPosition: GFToastPosition.BOTTOM,
                  textStyle: TextStyle(fontSize: 16, color: GFColors.DARK),
                  backgroundColor: GFColors.LIGHT,
                  trailing: Icon(
                    Icons.notifications,
                    color: GFColors.SUCCESS,
                  )),
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    color: GFColors.DARK,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.40), blurRadius: 5)
                    ]),
                child: GFListTile(
                    color: GFColors.DARK,
                    title: const Text(
                      'Show Toast with trailing',
                      style: TextStyle(color: GFColors.WHITE),
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: GFColors.SUCCESS,
                    )),
              )),

          GFButton(
              onPressed: (){
                GFToast.showToast(
                  'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
                  context,
                );
              },
              text:"primary",
              buttonBoxShadow:true,
            type: GFButtonType.solid,
              shape:GFButtonShape.pills,
              size:GFSize.LARGE,
            color: GFColors.DANGER,

          ),
          GFButton(
            onPressed: (){},
            text: "primary",
            icon: Icon(Icons.facebook,color: Colors.white,),
            type: GFButtonType.solid,
            blockButton: true,
          ),
          GFIconBadge(
            child: GFIconButton(
              onPressed: (){},
              icon: Icon(Icons.ac_unit),
              size: 10,
            ),
            counterChild: GFBadge(
              text: "12",

            ),
          ),

          GFCarousel(
            items: imageList.map(
                  (url) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network(
                        url,
                        fit: BoxFit.cover,
                        width: 1000.0
                    ),
                  ),
                );
              },
            ).toList(),
            onPageChanged: (index) {
              setState(() {
                index;
              });
            },
          ),

          GFAccordion(
              title: 'GF Accordion',
              content: 'GetFlutter is an open source library that comes with pre-build 1000+ UI components.'
          ),

        ],
      ),
    );
  }
}
