// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ninja/loginScreen.dart';

class Introscreen extends StatefulWidget {
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
  @override
  void initState(){
    super.initState();

  Timer(Duration(seconds: 2),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscreen(),));
  });
    
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SizedBox(
          child: Text("ResQ",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
      ),
    );

  }
}