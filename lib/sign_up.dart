import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:silence1/google_sign_in.dart';
import 'regiister.dart';



class HamroApp extends StatelessWidget {
   HamroApp({ Key? key }) : super(key: key);
     final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 // String _email, _password;
 //form key for login




  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
          appBar: AppBar(
            title: const Text('FarmApp1'),
            actions:  <Widget>[
              IconButton(
               icon:const Icon(
                 Icons.settings,
                 color: Colors.white,
                 size: 30,
               ),
               onPressed: (){
                
              },
               
               )
                
              
            ],
          ),
          body:SingleChildScrollView(
            child: Column(
              children:  <Widget>[
               /* const Text('Welcome to FarmApp', 
                style: TextStyle(fontSize: 25.0, 
                color: Colors.red),),
                */
                 Form(
               key: _formKey,
               child: Column(
                 children: <Widget>[
                   TextFormField(
                     validator: (input) {
                      // if (input.isEmpty) return 'Enter Email';
                     },
                     decoration:const InputDecoration(
                         labelText: 'Email',
                         prefixIcon: Icon(Icons.email)),
                     //onSaved: (input) => _email = input,
                   ),
                     TextFormField(
                       /*validator: (input) {
                         if (input.length < 6)
                           return 'Provide minimam 6 character';
                       },*/
                       decoration:const InputDecoration(
                           labelText: 'Password',
                           prefixIcon: Icon(Icons.lock)),
                       //obscureText: true,
                       //onSaved: (input) => _password = input,
                     ),
                  const SizedBox(
                      height: 20.0,
                   ),
                   // ignore: deprecated_member_use
                   RaisedButton(
                     padding:const EdgeInsets.fromLTRB(70, 10, 70, 10),
                     onPressed: (){},
                     child:const Text(
                       'Login',
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold),
                     ),
                      color: Colors.orange,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0)),
                   )
          ],
        ),
        ),
                ElevatedButton(
                  child:const Text('sign up with google'),
                  onPressed: (){
                    final provider = 
                    Provider.of<GoogleSignInProvider>(context,listen: false);
                    provider.googleLogin();
                  }
                  ,),
                const SizedBox(
                  height:  40.0
                ),
                RichText(text: TextSpan(
                  text: 'Alerady have an account? ',
                  style: const TextStyle(color: Colors.blue,fontSize: 17),
                  children: [
                    TextSpan(
                      text: 'Log in',
                      style: const TextStyle(color: Colors.brown, fontSize: 20.0),
                      recognizer:  TapGestureRecognizer()..onTap = () async{
                           Navigator.push(context,
                            MaterialPageRoute(builder: 
                            (context) => const register()));


                      }//go to signup page
                      
                      
                    )
                  ]
                ))
              
              ],
            ),
          ),
          
        );
      
    
  }
}