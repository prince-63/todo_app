import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/constants/color.dart';
import 'package:todo/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: tdBGColor,
          appBar: AppBar(
            backgroundColor: tdBGColor,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: tdBlack,
                  size: 30,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(224, 228, 219, 219),
                  child: Text("PK"),
                )
              ],
            ),
          ),
          body: Home(),
        ),
      ),
    );
  }
}
