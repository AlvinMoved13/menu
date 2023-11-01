import 'package:flutter/material.dart';
import 'package:menu/home_page.dart';
import 'package:menu/style.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: BgColor,
      appBar: AppBar(
        backgroundColor: MainColor,
        title: Text("Pilih Menu",
            style: TextStyle(
              color: Color(0xFFA6F6FF),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
        centerTitle: true,
      ),
      body: HomePage(),
    ));
  }
}
