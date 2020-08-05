import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mine/theme.dart';

import 'assignment_1.dart';
import 'querydata.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mine',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  final String title = 'Home (beta)';
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  AppTheme myTheme;
  bool start = true;
  _changeBrightness(){
    setState(() {
      myTheme.change();
    });
  }
  _update(){
    setState(() {
      myTheme.update();
    });
  }
  @override
  Widget build(BuildContext context) {
    if(start){
      myTheme = AppTheme(); start=false;
    }
    return Scaffold(
      backgroundColor: myTheme.primaryColor,
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: myTheme.primaryAppBarColor,
          elevation: 0.0,
          actions: [
            IconButton(icon: myTheme.brightIcon, onPressed: _changeBrightness,),
            IconButton(icon: Icon(Icons.cached), onPressed: _update,),
          ],
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Container(
                height: 42.0, width: 42.0,
                decoration: BoxDecoration(
                    color: myTheme.fancyColor[0],
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.stars, size: 24.0, color: Colors.white,),),
              title: Text('What\'s new',style: TextStyle(color: myTheme.fontColor)),
              subtitle: Text('Not Available',style: TextStyle(color: myTheme.fontColor)),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 42.0, width: 42.0,
                decoration: BoxDecoration(
                    color: myTheme.fancyColor[1],
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.developer_mode, size: 24.0, color: Colors.white,),),
              title: Text('MediaQueryData',style: TextStyle(color: myTheme.fontColor)),
              subtitle: Text('Size, Padding, etc',style: TextStyle(color: myTheme.fontColor)),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) {
                  return QueryData(myTheme: myTheme);
                }));
              },
            ),
            ListTile(
              leading: Container(
                height: 42.0, width: 42.0,
                decoration: BoxDecoration(
                  color: myTheme.fancyColor[2],
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.code, size: 24.0, color: Colors.white,),),
              title: Text('Swipe Increment',style: TextStyle(color: myTheme.fontColor)),
              subtitle: Text('Assignment 1',style: TextStyle(color: myTheme.fontColor)),
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) {
                  return Assignment1(myTheme: myTheme);
                }));
              },
            ),
            ListTile(
              leading: Container(
                height: 42.0, width: 42.0,
                decoration: BoxDecoration(
                    color: myTheme.fancyColor[3],
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.touch_app, size: 24.0, color: Colors.white,),),
              title: Text('Drag Increment',style: TextStyle(color: myTheme.fontColor)),
              subtitle: Text('Not Available',style: TextStyle(color: myTheme.fontColor)),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 42.0, width: 42.0,
                decoration: BoxDecoration(
                    color: myTheme.fancyColor[4],
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.book, size: 24.0, color: Colors.white,),),
              title: Text('How to use',style: TextStyle(color: myTheme.fontColor)),
              subtitle: Text('Not Available',style: TextStyle(color: myTheme.fontColor)),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 42.0, width: 42.0,
                decoration: BoxDecoration(
                    color: myTheme.fancyColor[5],
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.perm_device_information, size: 24.0, color: Colors.white,),),
              title: Text('About',style: TextStyle(color: myTheme.fontColor)),
              subtitle: Text('Not Available',style: TextStyle(color: myTheme.fontColor)),
              onTap: (){

              },
            ),
          ],
        ),
    );
  }
}
