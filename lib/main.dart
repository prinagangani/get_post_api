import 'package:flutter/material.dart';
import 'package:get_post_api/screens/home/provider/api_provider.dart';
import 'package:get_post_api/screens/home/view/home.dart';
import 'package:get_post_api/screens/home/view/detail_screen.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ApiProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'home':(context) => DetailScreen(),
        },
      ),
    ),
  );
}
