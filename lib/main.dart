import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seafood/constants.dart';
import 'package:seafood/homescreen.dart';
import 'package:seafood/loginscreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme:ThemeData( //2
        //3

        elevatedButtonTheme:  ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: primaryColor,//change background color of button
              onPrimary: Colors.white,//change text color of button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),

            )),

        scaffoldBackgroundColor: Colors.white,
        //
      ),

      home:MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    startSplashScreen();

    super.initState();
  }

  startSplashScreen() async {

    var duration = const Duration(seconds: 3);
    return Timer(duration, () async {

        Navigator.pushReplacement(
          context,
          new MaterialPageRoute(builder: (context) => loginscreen()),
        );



    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height:40,),
              Container(
                  width:MediaQuery.of(context).size.width*0.8,

                  child: Image.asset("images/logo.png")),

            ],
          ),
        ));
  }
}
