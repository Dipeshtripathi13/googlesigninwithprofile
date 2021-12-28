// ignore: file_names
// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
//import 'auth1.dart';


class register extends StatefulWidget {
  const register({ Key? key }) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 // String _name, _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 300,
              child: Image(
                image: AssetImage("assets/logo.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextFormField(
                         /* validator: (input) {
                            if (input.isEmpty) return 'Enter Name';
                          },*/
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.person),
                          ),
                         // onSaved: (input) => _name = input
                          ),
                    ),
                          Container(
                      child: TextFormField(
                        /*  validator: (input) {
                            if (input.isEmpty) return 'Enter Email';
                          },*/
                          decoration: const InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)),
                         // onSaved: (input) => _email = input
                         ),
                    ),
                    Container(
                      child: TextFormField(
                          /*validator: (input) {
                            if (input.length < 6)
                              return 'Provide Minimum 6 Character';
                          },*/
                          decoration:const InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                         // onSaved: (input) => _password = input
                         ),
                    ),
                    const SizedBox(height: 20),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      padding:const EdgeInsets.fromLTRB(70, 10, 70, 10),
                      onPressed: (){},
                      child:const Text('SignUp',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )
                  
           ],
            ),
            ),
        ),
        Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
                child: const Text('Already have an account? GoTo Login',style: TextStyle(fontSize: 16), ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
      )
        ],
        ),
      ),
      
        ));
}
}