import 'package:flutter/material.dart';
import 'package:image_color_picker/image_color_picker.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image color picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
            child: Text('Example 1'),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> NetworkImageBG(
                        networkpath: 'https://cdn.pixabay.com/photo/2020/10/18/16/45/porsche-5665390_1280.jpg',
                      ))
                  );
                }
            ),
            SizedBox(height: 15.0,),
            RaisedButton(
              child: Text('Example 2'),
                onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> AssetImageBG(
                     assetPath: 'assets/among.png',
                    ))
                );
                }
            ),
          ],
        ),
      ),
    );
  }
}













