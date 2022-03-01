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
            children: [
              _imageBox(300.0, 'assets/icon_home_page.png', 170.0),
              _buildCard(),
            ],
          ),
        )
    );
  }

  Widget _buildCard() {
    return Expanded(
        child: SizedBox(
          child: Card(
            child: Column(
              children: [
                _tile('Save (thing-place) pair', Colors.green[400]),
                _tile('Find things', Colors.green[200]),
                _tile('Watch my place', Colors.green[100]),
              ],
            ),
          ),
        )
    );
  }

  Widget _imageBox(double boxHeight, String file, double imageWidth) {
    return SizedBox(
      height: boxHeight,
      child: Center(
        child: Image(
          image: AssetImage(file),
          width: imageWidth,
        ),
      ),
    );
  }

  Widget _tile(String title, Color? color) {
    return Expanded(
        child: ListTile(
          title: Center(
            child:
            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
          tileColor: color,
        )
    );
  }
}

