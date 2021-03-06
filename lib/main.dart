import 'package:flutter/material.dart';
import 'login.dart';
import 'dart:async';
import 'profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'IOSD',
    home: SplashScreen(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color.fromRGBO(74, 144, 226,1),
      accentColor: Colors.blueAccent,
      errorColor: Color.fromRGBO(74, 144, 226,1),
      cursorColor: Colors.blue[900]
      
    ),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    Timer(
      Duration(seconds: 5), () {
      debugPrint("Splash Done");
      
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 250.0,
                        child: getImageAsset()
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      )
                    ],
                  ),
                ),
              ),

              Expanded( 
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation(Colors.blue[900]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "International Organisation of Student Developers",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  
  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/1.png');
    Image image = Image(
      image: assetImage,
      width: 455.0,
      height: 425.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(50),
    );
  }
}
