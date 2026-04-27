import 'package:flutter/material.dart';

import 'package:ninja/rescueForm.dart';

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
                    suffixText: 'hello',
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
                  builder: (context) => const RescueForm(),
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
        
    

    /*   


                // used for static data 
                ListView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Text("one"),
                    Text("two"),
                  ],
                ),




//database or from server
                ListView.builder(itemBuilder: (context, index) {
                  return Text('one');
                },
                itemCount: 5, // put no. how many you want  
                ),

                ListView.separated(itemBuilder: (context,index){
                  return Text('one');
                } , separatorBuilder: (context,index){
                  return Divider(height: 4,);  //pass widget which you want to show between two items
                }, itemCount: 5),
                TextField(
                  keyboardType: TextInputType.number, //used to show which keyboard
                  obscureText: true,
                  obscuringCharacter: "#",
                  

                )





CircleAvatar(
            backgroundColor: Colors.red,
            radius: 100, -- used to change the size of the circleAvatar
            maxRadius: 10,   -- to fix size
            minRadius: 10,   -- it will create a barrier like if default size is 100 but use minradius 120 then min will be 120 
            backgroundImage:AssetImage("assets/iamges/pg.png"), --used to set image in the circle

            ),



    
Column(
      children: [
        RichText(text: TextSpan(children: [TextSpan(text: "hello",style: GoogleFonts.caramel(color: Colors.red)),
        TextSpan(text: "world",style: GoogleFonts.abyssinicaSil(color: Colors.blue))]))
 
      ],
     )
      




    difference between rich text and text span is if we didnt provide any style in the text then 
    all text will be removed in default so we have to provide a style in all text in rich text and in text span 
    if not style then it follows the default text style 



Text("hello",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,fontFamily: "Montserrat"),),
        Text("world",style:GoogleFonts.cedarvilleCursive(color: Colors.red),),

Column(
      children: [
        Text.rich(TextSpan(children: [TextSpan(text: "hello",style: GoogleFonts.caramel(color: Colors.red)),TextSpan(text: "world",style: GoogleFonts.abyssinicaSil(color: Colors.blue))]))
        
      ],
     )





  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Login",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // navigation will come later
                },
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginscreen extends StatelessWidget{
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Center(child: Text("NINJA",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),)),
      
    ),      
    body: 


Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
        
      children: [
        
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Card(
              elevation: 3,
              child: Container(
              width: 350,
              height: 400,
              child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,  // used to select which type of keyboard you want 
                        obscureText: true,  // true hide , false unhide the text
                        obscuringCharacter: "*", // used to set text apperance
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.blue,
                            )
                          ),   //outline input border used to set the outline border apperance and input for inside 
                          
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.lightGreen,
                            )
                          ), // used to set the appearance when the textfield is clicked
                      
                          // disabledBorder: ,  //can't click and set any value
                        ),
                      ),
                    )
                  ],
            
              ),
            )),
          ),
        

        Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 155),
          
          child: ElevatedButton(onPressed: (){},
           
             style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
             child: Text("Login",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold,)),
             )
           ),
        
      ],
    )  
  

     
    
    );
  }
}
in this code when running in app and when click on the textfield the virtual keyoard appears and showing at bottom of the page screen render 66 px overflow why this happens and also in the elevated button when using the alignemnet.bottomright it doesnt appears at the extreme bottom right but at the half screen why and how to put in the extreme right of the phone screen and also when using the crossaxix laignment .center for column it is not center at the screen why and even when using both it little inclined to thte left side maybe because of the size of card maybe and does i should use the container instead of column









Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25), // ✅ fixed centering
              child: Card(
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [

                          SizedBox(height: 50,),
              Text("Email"),
              SizedBox(height: 30,),

                      // EMAIL FIELD
                      TextField(
                        keyboardType: TextInputType.emailAddress,  // used to select which type of keyboard you want
                            decoration: InputDecoration( //used to decorate the textfield
                              labelStyle: TextStyle( //used for label style
                                color: Colors.white,
                              ),
                              hintText: "hello",  //set hint
                              hintStyle: TextStyle(color: Colors.red), 
                              filled: true, //used to set default app color inside the textfield
                              fillColor: Colors.white,  
                              prefixIcon: Icon(Icons.email),  // used to put at last
                              suffixText:'hello' ,        //used to put at first
                              
                              labelText: "Email",
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
                          

                      SizedBox(height: 50,),
              Text("Password"),
              SizedBox(height: 30,),

                      // PASSWORD FIELD
                       TextField(
                        keyboardType: TextInputType.number, // as you asked
                        style: const TextStyle(color: Colors.blue), // blue text
                         obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          labelText: "Password",
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
                alignment: Alignment.centerRight, // ✅ proper right alignment
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RescueForm(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: const Text(
    */