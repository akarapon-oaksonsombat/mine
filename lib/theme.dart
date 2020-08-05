import 'package:flutter/material.dart';

class AppTheme  {
  bool bright;  bool trueBlack; Icon brightIcon;
  
  Color primaryColor; Color primaryAppBarColor; Color primaryAccentColor;
  Color secondaryColor; Color secondaryAccentColor;
  Color fontColor;  Color fontColorLight;
  List<Color> fancyColor; int fancyColorNum;

  AppTheme(){
    bright = true; trueBlack = true; fancyColorNum=6;
    fancyColor = <Color>[];
    for(int i=0;i<fancyColorNum;i++){
      fancyColor.add(Colors.white);
    }
    update();
  }
  void change(){
    if(bright){
      bright = false; trueBlack = false;
    }else if(!bright && !trueBlack){
      bright = false; trueBlack = true;
    }else if(!bright && trueBlack){
      bright = true;
    }
    update();
  }
  void update(){
    if(bright){
      brightIcon = Icon(Icons.brightness_6, color: Colors.white,);
      primaryColor = Colors.white;
      primaryAppBarColor = Color.fromRGBO(0, 60, 113, 1);
      primaryAccentColor = Color.fromRGBO(0, 165, 245, 1);
      secondaryColor = Color.fromRGBO(65, 209, 159, 1);
      secondaryAccentColor = Color.fromRGBO(107, 245, 200, 1);
      fontColor = Colors.black;
      fontColorLight = Colors.white;
      fancyColor[0] = Colors.blue;
      fancyColor[1] = Colors.lightGreen[700];
      fancyColor[2] = Colors.orange[700];
      fancyColor[3] = Colors.teal[700];
      fancyColor[4] = Colors.amber[600];
      fancyColor[5] = Colors.cyan[700];

    }else if(!bright && !trueBlack){
      brightIcon = Icon(Icons.brightness_4, color: Colors.white70);
      primaryColor = Color.fromRGBO(0, 60, 113, 1);
      primaryAppBarColor = Color.fromRGBO(0, 89, 203, 1);
      primaryAccentColor = Color.fromRGBO(0, 165, 245, 1);
      secondaryColor = Color.fromRGBO(0, 60, 113, 1);
      secondaryAccentColor =  Color.fromRGBO(0, 165, 245, 1);
      //secondaryColor = Color.fromRGBO(65, 209, 159, 1);
      //secondaryAccentColor = Color.fromRGBO(107, 245, 200, 1);
      fontColor = Colors.white;
      fontColorLight = Colors.white;
      fancyColor[0] = Colors.blue[700];
      fancyColor[1] = Colors.lightGreen[900];
      fancyColor[2] = Colors.deepOrange[800];
      fancyColor[3] = Colors.teal[800];
      fancyColor[4] = Colors.yellow[900];
      fancyColor[5] = Colors.cyan[900];

    }else if(!bright && trueBlack){
      //Darkness
      brightIcon = Icon(Icons.brightness_5, color: Colors.white70,);
      primaryColor = Colors.black;
      primaryAppBarColor = Colors.black;
      primaryAccentColor = Colors.blueGrey;
      secondaryColor = Colors.black;
      secondaryAccentColor = Colors.blueGrey;
      fontColor = Colors.white;
      fontColorLight = Colors.white;
      for(int i=0;i<fancyColorNum;i++){
        fancyColor[i] = Colors.blueGrey[900];
      }

    }
  }


}