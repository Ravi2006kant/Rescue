
import 'package:flutter/material.dart';
import 'package:ninja/main.dart';
import 'package:ninja/rescueListScreen.dart';

class RescueForm extends StatelessWidget {
  const RescueForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rescue Form",style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 253, 0, 0)
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
              // NAME
              TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // PHONE
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // EMERGENCY TYPE
              TextField(
                decoration: InputDecoration(
                  labelText: "Emergency Type",
                  hintText: "Fire / Medical / Accident",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 25),
          
              // SUBMIT BUTTON
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  RescueListScreen()));
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ), 
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
             
              )
            ],
       
        ))
    );
  }
}


/*


             Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
              // NAME
              TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // PHONE
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // EMERGENCY TYPE
              TextField(
                decoration: InputDecoration(
                  labelText: "Emergency Type",
                  hintText: "Fire / Medical / Accident",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 25),
          
              // SUBMIT BUTTON
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Rescue Request Submitted")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ), 
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyHomePage()));
            }, child:Text("next"))
            ],
          ),
                ),
          
          
                 Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
              // NAME
              TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // PHONE
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // EMERGENCY TYPE
              TextField(
                decoration: InputDecoration(
                  labelText: "Emergency Type",
                  hintText: "Fire / Medical / Accident",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 25),
          
              // SUBMIT BUTTON
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Rescue Request Submitted")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ), 
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyHomePage()));
            }, child:Text("next"))
            ],
          ),
                ),
          
                 Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
              // NAME
              TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // PHONE
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // EMERGENCY TYPE
              TextField(
                decoration: InputDecoration(
                  labelText: "Emergency Type",
                  hintText: "Fire / Medical / Accident",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 25),
          
              // SUBMIT BUTTON
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Rescue Request Submitted")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ), 
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyHomePage()));
            }, child:Text("next"))
            ],
          ),
                ),
          
                 Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
              // NAME
              TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // PHONE
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // EMERGENCY TYPE
              TextField(
                decoration: InputDecoration(
                  labelText: "Emergency Type",
                  hintText: "Fire / Medical / Accident",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 25),
          
              // SUBMIT BUTTON
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Rescue Request Submitted")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ), 
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyHomePage()));
            }, child:Text("next"))
            ],
          ),
                ),
          
                 Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
              // NAME
              TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // PHONE
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 15),
          
              // EMERGENCY TYPE
              TextField(
                decoration: InputDecoration(
                  labelText: "Emergency Type",
                  hintText: "Fire / Medical / Accident",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
          
              const SizedBox(height: 25),
          
              // SUBMIT BUTTON
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Rescue Request Submitted")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ), 
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyHomePage()));
            }, child:Text("next"))
            ],
          ),
                ),
                

*/