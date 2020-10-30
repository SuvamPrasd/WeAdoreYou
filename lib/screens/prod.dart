import 'package:flutter/material.dart';

class Prod extends StatelessWidget {
  static const routeName = '/prod';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            'Health',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Container(),
        ),
      ),
    );
  }
}
