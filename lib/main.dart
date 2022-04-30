import 'package:flutter/material.dart';
import 'package:where_is_my/pages/SavePage.dart';

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
            _buildMenu(context),
          ],
        ),
      )
    );
  }

  Widget _buildMenu(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _tile(context, '📃🧹📂', 'Save things & place pair', Colors.lightGreen[600], SavePage()),
          _tile(context, '🔍📃', 'Find things', Colors.green[400], MyHomePage()),
          _tile(context, '🔍📂', 'Watch places', Colors.teal[400], MyHomePage()),
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

  Widget _tile(BuildContext context, String title, String subtitle, Color? color, StatelessWidget targetPage) {
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => targetPage),
            );
          },
        )
    );
  }
}

