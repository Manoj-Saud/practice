import 'package:flutter/material.dart';
import 'package:practice_app/fashion_page.dart';
import 'package:practice_app/health_page.dart';
import 'package:practice_app/home/home_page.dart';
import 'package:practice_app/listpage/firstpage.dart';
import 'package:practice_app/profile/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DetailPage(),
      routes: {
        "/homePage": (context) => HomePage(),
        "/profilePage": (context) => ProfilePage(),
        "/detailPage": (context) => DetailPage(),
        "/fashionPage": (context) => FashionPage(),
        "/healthPage": (context) => HealthPage(),
      },
    );
  }
}
