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
              const SizedBox(height: 50.0),
              _image('assets/icon_home_page.png', 120.0),
              const SizedBox(height: 120.0),
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

  Image _image(String file, double width) {
    return Image(
      image: AssetImage(file),
      width: width,
    );
  }

  Widget _tile(String title, Color? color) {
    return Expanded(
        child: ListTile(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          tileColor: color,
        )
    );
  }
}

