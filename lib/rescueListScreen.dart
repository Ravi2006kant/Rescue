import 'package:flutter/material.dart';

class RescueListScreen extends StatelessWidget {
  
  

  const RescueListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Rescue Requests")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [

          Card(
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              
              trailing: Icon(Icons.call),
            ),
          ),

          // Dummy extra data
          Card(
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Rahul"),
              subtitle: Text("Medical Emergency"),
              trailing: Icon(Icons.call),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Ankit"),
              subtitle: Text("Accident Help"),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
      ),
    );
  }
}

class RescueRequest {
  final String name;
  final String problem;

  RescueRequest({required this.name, required this.problem});
}