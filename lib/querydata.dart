import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mine/theme.dart';

class QueryData extends StatefulWidget {
  final AppTheme myTheme;
  QueryData({Key key, @required this.myTheme}) : super(key: key);
  @override
  QueryDataState createState() => QueryDataState(myTheme);
}

class QueryDataState extends State<QueryData> {
  AppTheme myTheme;
  QueryDataState(this.myTheme);
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('MediaQueryData'),
      elevation: 0.0,
      backgroundColor: myTheme.primaryAppBarColor,
    );
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: myTheme.primaryColor,
      appBar: appBar,
      body: Padding(
        padding: new EdgeInsets.fromLTRB(16,63,16,0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('size : ${data.size}',style: TextStyle(color: myTheme.fontColor)),
                Text('devicePixelRatio : ${data.devicePixelRatio}',style: TextStyle(color: myTheme.fontColor)),
                Text('textScaleFactor : ${data.textScaleFactor}',style: TextStyle(color: myTheme.fontColor)),
                Text('platformBrightness : ${data.platformBrightness}',style: TextStyle(color: myTheme.fontColor)),
                Text('padding : ${data.padding}',style: TextStyle(color: myTheme.fontColor)),
                Text('viewInsets : ${data.viewInsets}',style: TextStyle(color: myTheme.fontColor)),
                Text('systemGestureInsets : ${data.systemGestureInsets}',style: TextStyle(color: myTheme.fontColor)),
                Text('viewPadding : ${data.viewPadding}',style: TextStyle(color: myTheme.fontColor)),
                //Text('physicalDepth : ${data.physicalDepth}'),
                Text('alwayUse24HourFormat : ${data.alwaysUse24HourFormat}',style: TextStyle(color: myTheme.fontColor)),
                Text('accessibleNavigation : ${data.accessibleNavigation}',style: TextStyle(color: myTheme.fontColor)),
                Text('invertColors : ${data.invertColors}',style: TextStyle(color: myTheme.fontColor)),
                Text('highContrast : ${data.highContrast}',style: TextStyle(color: myTheme.fontColor)),
                Text('disableAnimation : ${data.disableAnimations}',style: TextStyle(color: myTheme.fontColor)),
                Text('boldText : ${data.boldText}',style: TextStyle(color: myTheme.fontColor)),
                Text('appBar h : ${appBar.preferredSize.height}',style: TextStyle(color: myTheme.fontColor))
              ],
            ),
          ],
        )
      ),
    );
  }
}
