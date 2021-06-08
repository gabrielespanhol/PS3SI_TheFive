
import 'package:flutter/material.dart';
import 'package:ps_thefive/screens/details_screen.dart';
import 'package:ps_thefive/screens/list_screen.dart';
import 'package:ps_thefive/screens/login_screen.dart';
import 'package:ps_thefive/screens/password_screen.dart';
import 'package:ps_thefive/screens/research_screen.dart';
import 'package:ps_thefive/screens/register_screen.dart';
import 'package:ps_thefive/screens/subscribe_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/pesquisa': (context) => ResearchScreen(),
        '/cadastro': (context) => RegisterScreen(),
        '/senha': (context) => PasswordScreen(),
        '/rank': (context) => CoursesScreen(),
        '/inscricao': (context) =>SubscribeScreen(),
        '/detalhes': (context) => Detalhes(),

      },
      title: 'TheFive',
    
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
    );
  }
}

/*
theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
*/
