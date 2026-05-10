import 'package:flutter/material.dart';
import 'package:ninja/introScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Introscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ResQ"),
        
      ),
      body:
      Column(
        children: [
            SizedBox(height: 30,),
          Center(child: Text("Welcome Back !!",style: TextStyle(fontSize: 25,
          fontWeight: FontWeight(200),color: Colors.black),)),

          Center(
            child: Card(
              color: Colors.yellow,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
            
              ),
              shadowColor: const Color.fromARGB(255, 0, 0, 0),
              
              child: Text("Find Help",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
              color: Colors.white,backgroundColor: Colors.red),),
              
            ),
          )
        ],
      )
    );
  }
}
