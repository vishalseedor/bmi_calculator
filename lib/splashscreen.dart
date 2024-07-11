
import 'package:flutter/material.dart';
import 'package:new_bmi_cal/mainscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> { 
  @override
  void initState(){
    splashimage();
    super.initState();
  }

 splashimage()async{
  await Future.delayed(Duration(milliseconds: 1500));

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>InputPage()));
  

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/new.png'),fit: BoxFit.cover)),
      )
    );
  }
}
