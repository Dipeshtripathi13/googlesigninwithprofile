import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:silence1/google_sign_in.dart';
import 'package:silence1/home_page.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  static const String title = 'Mainpage';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => GoogleSignInProvider(),

    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData.dark().copyWith(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.indigo)),
      home: const HomePage(),
    ),
  );
}
