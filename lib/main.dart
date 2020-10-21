import 'package:flutter/material.dart';
import './utilities/details.dart';
import './utilities/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Adore You',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primary,
        appBar: AppBar(
          title: Text(
            main_title,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          backgroundColor: primary,
          elevation: 0.0,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.info,
                  color: Colors.black,
                ),
                onPressed: () {
                  return showAboutDialog(
                      context: context,
                      applicationName: main_title,
                      applicationLegalese: '',
                      applicationVersion: '1.0v');
                }),
          ],
        ),
      ),
    );
  }
}
