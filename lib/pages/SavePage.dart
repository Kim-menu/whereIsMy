import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
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
              _buildMenu(context),
            ],
          ),
        )
    );
  }

  Widget _buildMenu(BuildContext context) {
    return Expanded(
      child: Column(
        children: const [
          TextField(
            decoration: InputDecoration (
              labelText: 'Place',
            ),
          ),
          TextField(
            decoration: InputDecoration (
              labelText: 'Things',
            ),
          ),
        ],
      ),
    );
  }
}