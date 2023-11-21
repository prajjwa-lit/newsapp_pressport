import 'package:flutter/material.dart';
import 'package:newsapp/view/home.dart';
import 'package:newsapp/view/spalsh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  bool showSplash = true;
  LoadHome() {
    Future.delayed(Duration(seconds: 3), ()
    {
      setState(()
      {
        showSplash = false;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadHome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PressPort:Anchored in Authenticity',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showSplash ? SplashScreen() : HomeScreen(),
    );
  }
}
