import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:silence1/google_sign_in.dart';

class LoggedIn extends StatefulWidget {
  const LoggedIn({ Key? key }) : super(key: key);

  @override
  _LoggedInState createState() => _LoggedInState();
}

class _LoggedInState extends State<LoggedIn> {

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title:const Text('Logged In'),
      actions: <Widget>[
        IconButton(
                 icon:const Icon(
                   Icons.logout,
                   color: Colors.white,
                   size: 30,
                 ),
                 onPressed: (){
                   final provider =
                   Provider.of<GoogleSignInProvider>(context, listen: false);
                   provider.logout();
                  
                },
                 
                 )
      ]
        
      ),
      body: Column(
        children: [
          const Text('welcome to profile'),
          const Center(child: SizedBox(height: 32,)),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user.photoURL!),
          ),
          const SizedBox(
            height: 8,
          ),
          Text('Name: ' + user.displayName! ,
          style: const TextStyle(color: Colors.white,fontSize: 16),),
           const SizedBox(
            height: 8,
          ),
          Text('Email: ' + user.email! ,
          style: const TextStyle(color: Colors.white,fontSize: 16),)
        ],
      )
      
    );
  }
}