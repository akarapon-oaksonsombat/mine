import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mine/theme.dart';

class Assignment1 extends StatefulWidget {
  final AppTheme myTheme;
  Assignment1({Key key, @required this.myTheme}) : super(key: key);
  @override
  Assignment1State createState() => Assignment1State(myTheme);
}

class Assignment1State extends State<Assignment1> {
  AppTheme myTheme;
  Assignment1State(this.myTheme);
  int _counter = 0; String mode = 'Circle';
  void _resetCounter() {
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      backgroundColor: myTheme.secondaryColor,
      title: Text('Swipe Increment', style: TextStyle(color: myTheme.fontColorLight,)),
      elevation: 0.0,
      actions: [
        IconButton(icon: Icon(Icons.refresh, color: myTheme.fontColorLight,), onPressed: _resetCounter,),
      ],
    );
    double paddingTop = appBar.preferredSize.height + MediaQuery.of(context).padding.top;
    double paddingBottom = 48;
    double absHeight = MediaQuery.of(context).size.height - paddingTop - paddingBottom;
    double absWidth = MediaQuery.of(context).size.width;
    double boxSize = MediaQuery.of(context).size.width-32;
    return LayoutBuilder(
      builder: (context, constraints){
        if((constraints.maxHeight/constraints.maxWidth) > 1.33 && (constraints.maxHeight/constraints.maxWidth) < 2.33){
          return Scaffold(
              appBar: appBar,
              body: Container(
                color: myTheme.secondaryColor,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 16.0),
                      child: DisplayWidget(boxSize, _counter, myTheme),
                    ),
                    Container(
                      height: absHeight - absWidth,
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Center(
                              child: Dismissible(
                                onDismissed: (DismissDirection direction){
                                  setState(() {
                                    _counter += direction == DismissDirection.endToStart ? -1 : 1;
                                  });
                                },
                                key: ValueKey(_counter),
                                child: Container(
                                    height: boxSize*0.4 , width: boxSize*0.4 ,
                                    decoration: BoxDecoration(
                                      color: myTheme.secondaryAccentColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: (boxSize*0.4)*0.9, width: (boxSize*0.4)*0.9,
                                        decoration: BoxDecoration(
                                          color: myTheme.secondaryColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(Icons.code, size: (((absHeight - absWidth)*0.5)*0.7)*0.8, color: myTheme.secondaryAccentColor,),
                                        ),
                                      ),
                                    )
                                ),
                              )
                          )
                      ),
                    )
                  ],
                ),
              )
          );
        }else{
          return Scaffold(
            appBar: appBar,
            backgroundColor: myTheme.secondaryColor,
            body: Center(
              child: Text('Sorry, This page cannot display on your screen.',style: TextStyle(color: myTheme.fontColor)),
            ),
          );
        }
      }
    );
    /*


     */
  }
}
class DisplayWidget extends StatelessWidget {
  final double boxSize; final int number;
  final AppTheme myTheme;
  DisplayWidget(
      this.boxSize, this.number,
      this.myTheme
      );
  Widget build (BuildContext context){
    return Center(
      child: Container(
        height: boxSize*0.7, width: boxSize*0.7,
        decoration: BoxDecoration(
          color: myTheme.secondaryAccentColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
              height: boxSize*0.65, width: boxSize*0.65,
              decoration: BoxDecoration(
                color: myTheme.secondaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text('$number', style: TextStyle(color: myTheme.fontColorLight, fontWeight: FontWeight.bold, fontSize: 72),),
              )
          ),
        ),
      ),
    );
  }
}
