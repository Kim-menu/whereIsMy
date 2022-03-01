import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Where Is My',
      theme: ThemeData(
        fontFamily: 'Nanum_Gothic_KR',
        primarySwatch: Colors.green,
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
              _buildMenu(),
            ],
          ),
        )
    );
  }

  Widget _buildMenu() {
    return Expanded(
      child: Column(
        children: [
          _tile('📃🧹📂', 'Save thing & place pair', Colors.lightGreen[600]),
          _tile('🔍📃', 'Find things', Colors.green[400]),
          _tile('🔍📂', 'Watch places', Colors.teal[400]),
        ],
      ),
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

  Widget _tile(String title, String subtitle, Color? color) {
    return Expanded(
        child: ListTile(
          title: Column(
            children: [
              const SizedBox(height: 10.0),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          tileColor: color,
        )
    );
  }
}

