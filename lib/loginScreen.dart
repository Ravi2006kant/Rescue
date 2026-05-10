import 'package:flutter/material.dart';
import 'package:ninja/main.dart';

class Loginscreen extends StatelessWidget{
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Center(child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),)),
      
    ),      
    body: 

SingleChildScrollView(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      const SizedBox(height: 80),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Card(
          elevation: 3,
          child: Container(
            width: double.infinity,
            height: 400,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // ✅ better alignment
              children: [

                const SizedBox(height: 20),

                const Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                // EMAIL FIELD
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    
                    labelText: "Enter Email",
                    labelStyle: const TextStyle(color: Colors.grey), // ✅ visible label
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                // PASSWORD FIELD
                TextField(
                  keyboardType: TextInputType.text, // ✅ corrected (not number)
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: "Enter Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      const SizedBox(height: 30),

      // LOGIN BUTTON
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              "Login",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),

      const SizedBox(height: 20),
    ],
  ),
)
  

     
    
    );
  }
}
        