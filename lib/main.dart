import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Where Is My',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Where Is My'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 50.0,
            ),
            Image(
              image: AssetImage('assets/icon_home_page.png'),
              width: 120.0,
            )
          ],
        ),
      ),
    );
  }
}