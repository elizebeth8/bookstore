import 'package:bookstore/screens/log.dart';
import 'package:bookstore/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});
  //final String text;
  // TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text('Sign In',style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 32,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins'
              
                ),
                ),
                verticalSpacing(42.0),
        
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),borderRadius: BorderRadius.circular(12
                  )),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      border: InputBorder.none,
                      
                    ),
                  ),
                ),
                verticalSpacing(42.0),
        
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Password"),
                      border: InputBorder.none,
                      
                      
                    ),
                  ),
                ),

                SizedBox(height: 5,),
                Text('    Forgot Password',style: TextStyle(
                  decoration: TextDecoration.underline
                ),),
                verticalSpacing(42.0),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,),
                    onPressed: () {
                     

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const log()),
  );

                    },
                    child: Text('Sign In',style: TextStyle(color: Colors.white70),)
                    ),
                )
        
            ],
          ),
        ),
      ),
    );
  }
}