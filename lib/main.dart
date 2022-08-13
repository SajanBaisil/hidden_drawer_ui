import 'package:flutter/material.dart';
import 'package:hidden_drawer_ui/hiddendrawer.dart';
import 'package:hidden_drawer_ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Hidden Drawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.deepPurple ),

      home:const HiddenDrawer()
    );
  }
}

