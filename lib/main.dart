import 'package:booking/Login.dart';
import 'package:booking/admin_tips.dart';
import 'package:booking/edit.dart';
import 'package:booking/helpers/db_helper.dart';
import 'package:booking/register.dart';
import 'package:booking/trips.dart';
import 'package:booking/welcom.dart';
import 'package:flutter/material.dart';

void main() {
  DBHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Welcom());
  }
}
