import 'package:flutter/material.dart';
import 'package:flutter_application_15/views/Newsfeed.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        
       
      ),
      home:NewsFeed() ,
    );
  }
}


  
  