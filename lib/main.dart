import 'package:flutter/material.dart';
import 'package:shared_p_logic/pages/home_page.dart';
import 'package:shared_p_logic/pages/signup_page.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        SignUpPage.id: (context) => const SignUpPage(),
      },

    );
  }
}
