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

// https://www.figma.com/design/GVd4waJpH4wsRuNjiT56Lz/-FREE--Friendzy---Dating-Mobile-App-UI-Kit--Community-?node-id=0-1&p=f&t=SseB6vWxLM2yMmFO-0