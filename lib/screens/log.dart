import 'package:bookstore/screens/homepage.dart';
import 'package:bookstore/screens/signin.dart';
import 'package:flutter/material.dart';



class log extends StatelessWidget {
  const log({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: const Center(child:Text("LOGIFY",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 50),),),toolbarOpacity: 0.5,toolbarHeight: 120,elevation: 60.0,shadowColor: Color.fromARGB(255, 0, 0, 0),backgroundColor: Colors.blueGrey,
     
      ),
     body:Center(
       child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
       children:[ 
        //Container(
          
       const Text("Login Account",
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 40,
          //fontFamily:'Raleway'
        ),
        ),
         SizedBox(height: 20,),
        Text('Username',style: TextStyle(color: Colors.blueGrey,fontSize: 20,),),
       // Spacer(flex: 2,),
       SizedBox(height: 5,),
        SizedBox(
        
          width: 200,
          child: TextField(
            decoration:InputDecoration(
              hintText: 'Enter username',
              //fillColor: Colors.blueGrey,
              hintStyle: TextStyle(color: Color.fromARGB(255, 81, 97, 105),),
              border: OutlineInputBorder(),
             // icon: AboutDialog()
            ) ,
            
          ),
        ),
         SizedBox(height: 20,),
        Text('Password',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
         SizedBox(height: 5,),
        SizedBox(
          width: 200,
          child: TextField(
            decoration:InputDecoration(
              hintText: 'Enter password',
              //fillColor: Color.fromARGB(255, 81, 97, 105),
              hintStyle: TextStyle(color: Color.fromARGB(255, 81, 97, 105),),
              border: OutlineInputBorder(),
             // icon: AboutDialog()
            ) ,
            
          ),
        ),
         SizedBox(height: 30,),
        Container(
          height: 30,
          width: 100,
          child: ElevatedButton(child: Text('back'),onPressed: () {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Homepage()),
  );
            
          },style:ElevatedButton.styleFrom(primary: Colors.blueGrey) ,)
        )
        //)
       ]
        )
        )
    );
  }
}