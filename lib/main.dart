import 'package:flutter/material.dart';
import 'package:yemek_tarifi/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Yemek Tarifi'),
          ),
          body: HomeView()),
    );
  }
}
