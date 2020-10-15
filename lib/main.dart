import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Calls.dart';
import 'package:whatsapp_ui/Camera.dart';
import 'package:whatsapp_ui/Chats.dart';
import 'package:whatsapp_ui/Status.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 8,
            title: Text(
              'Whatsapp ',
            ),
            backgroundColor: const Color(0xff12807E),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                ),
                Tab(
                  text: ("CHATS"),
                ),
                Tab(
                  text: ("STATUS"),
                ),
                Tab(
                  text: ("CALLS"),
                ),
              ],
            ),
            actions: <Widget>[
              Icon(
                Icons.search,
              ),
              Icon(
                Icons.more_vert,
              ),
            ],
          ),
          body: new TabBarView(
            children: <Widget>[
              new Camera(),
              new Chats(),
              new Status(),
              new Calls(),
            ],
          ),
        ),
      ),
    );
  }
}
