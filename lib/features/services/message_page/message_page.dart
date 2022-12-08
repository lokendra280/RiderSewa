import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ridersewa/features/services/message_page/champaigns.dart';
import 'package:ridersewa/features/services/message_page/inbox_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Message'),
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
            Expanded(
              flex: 2,
              child: TabBarView(
                children: <Widget>[
                  ChampaignsPage(),
                  InboxPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
