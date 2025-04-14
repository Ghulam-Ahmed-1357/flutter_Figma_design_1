import 'package:flutter/material.dart';
import 'package:untitled1/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.blue
          )
        ),
        home: HomePage(),
    );
  }
}
