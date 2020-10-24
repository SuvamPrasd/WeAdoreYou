import 'package:flutter/material.dart';
import '../utilities/details.dart';

class Puberty extends StatelessWidget {
  static const routeName = '/puberty';

  @override
  Widget build(BuildContext context) {
    double _deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Puberty',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: _deviceWidth,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/puberty1.jpg',
                    ),
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    about_puberty,
                    style: TextStyle(
                      height: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Influential factors for female puberty starts quickly',
                    style: TextStyle(fontSize: 21),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    child: ListView.builder(
                      itemBuilder: (ctx, index) {
                        return Text(
                          puberty_factors[index],
                          style: TextStyle(height: 2.0, color: Colors.grey),
                        );
                      },
                      itemCount: puberty_factors.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
