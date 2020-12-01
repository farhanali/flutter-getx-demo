import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String page = "Dashboard";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mashkor OMS'),
        ),
        drawer: _buildDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$page goes here..',
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Text('Dashboard'),
            onTap: () {
              setState(() => page = "Dashboard");
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Customers'),
            onTap: () {
              setState(() => page = "Customers");
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
