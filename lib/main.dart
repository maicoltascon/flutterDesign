import 'package:disenios/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:disenios/screens/scroll_design.dart';
import 'package:disenios/screens/basic_design.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
      

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_design',
      routes: {
        'basic_design': ( _ ) => const BasicDesignScreen(),
        'scroll_design': ( _ ) => const ScrollDesignScreen(),
        'home_design': ( _ ) => const HomeScreen(),
      },
    );
  }
}

