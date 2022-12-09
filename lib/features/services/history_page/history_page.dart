import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: const TabBar(
              labelColor: Color(0xff070B86),
              tabs: <Widget>[
                Tab(
                  text: "CAMOAIGNS",
                ),
                Tab(
                  text: "INBOX",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
