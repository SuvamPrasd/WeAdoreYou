import 'package:flutter/material.dart';
import './utilities/details.dart';
import './utilities/style.dart';

import './screens/start.dart';
import './screens/puberty.dart';
import './screens/prod.dart';
import './screens/mens.dart';
import './screens/health.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We Adore You',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: {
        '/start': (BuildContext context) => Start(),
        '/puberty': (BuildContext context) => Puberty(),
        '/mens': (BuildContext context) => Mens(),
        '/prod': (BuildContext context) => Prod(),
        '/health': (BuildContext context) => Health(),

      },
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
    final _width = MediaQuery.of(context).size.width;
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
        body: Container(
          width: _width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/girls.png'),
                alignment: Alignment.center,
                fit: BoxFit.contain,
                height: 100,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                main_title,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: Text(
                  first_desc,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_up),
          tooltip: 'Start',
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(Start.routeName);
          },
        ),
      ),
    );
  }
}
