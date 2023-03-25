
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
      appBar: AppBar(title: const Center(child:Text("PROFILE",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 50),),),toolbarOpacity: 0.5,toolbarHeight: 120,elevation: 60.0,shadowColor: Color.fromARGB(255, 0, 0, 0),backgroundColor: Colors.blueGrey,
     
      ),
     body:Center(
       child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
       children:[ 
        //Container(
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/me.jpg'),
          ),
        Text("Elizebeth Shaji",
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 40,
          fontFamily:'Poppins'
        ),
        ),
        Text('Flutter developer',
        style: TextStyle(
          color: Colors.blueGrey
        ),
        ),
         SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(12)),
          height: 50,
          width: 350,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email_outlined,color: Colors.blueGrey,),
               Text('elizebethshaji8@gmail.com',style: TextStyle(color: Colors.blueGrey,fontSize: 20,),),
            ],
          ),
        ),
       // Spacer(flex: 2,),
       SizedBox(height: 15,),
       Container(
        decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(12)),
          height: 50,
          width: 350,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.call,color: Colors.blueGrey,),
            SizedBox(width: 30,),
                Text('+91 6783266388',style: TextStyle(color: Colors.blueGrey,fontSize: 20,),),
          ],
         ),
       ),
         SizedBox(height: 20,),
       
         SizedBox(height: 30,),
        Container(
          height: 40,
          width: 100,
          child: ElevatedButton(child: Text('Back'),onPressed: () {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Signin()),
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