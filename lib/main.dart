import 'package:flutter/material.dart';
import 'main_screen.dart';

/*
Author Name  :  WeblineIndia  |  https://www.weblineindia.com/

For more such software development components and code libraries, visit us at
https://www.weblineindia.com/software-development-resources.html 

Our Github URL : https://github.com/weblineindia
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Country Picker',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 253, 188, 51),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

