import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:modu_tour/page/loginPage.dart';
import 'package:modu_tour/page/signPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '모두의 여행',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => LoginPage(),
        '/sign' : (context) => SignPage()
      },
    );
  }
}