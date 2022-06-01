import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // title: const Text('Title'),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Tab(
                      icon: Icon(Icons.android),
                      text: "Tab 1",
                    ),
                    Tab(icon: Icon(Icons.phone_iphone), text: "Tab 2"),
                    Tab(icon: Icon(Icons.phone_iphone), text: "Tab 2"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Page 1")),
            Center(child: Text("Page 1")),
            Center(child: Text("Page 2")),
            
          ],
        ),
      ),
    );
  }
}
