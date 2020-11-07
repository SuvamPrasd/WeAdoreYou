import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:slimy_card/slimy_card.dart';

import '../utilities/details.dart';

class Mens extends StatelessWidget {
  static const routeName = '/mens';

  @override
  Widget build(BuildContext context) {
    double _deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            'Menstruation',
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InteractiveViewer(
                    child: Image(
                      image: AssetImage(
                        'assets/images/period.jpg',
                      ),
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    periods,
                    style: TextStyle(
                      height: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    periods_words,
                    style: TextStyle(
                      height: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ListView.builder(
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SlimyCard(
                          width: 300,
                          color: Colors.red[300],
                          topCardHeight: 200,
                          bottomCardHeight: 250,
                          slimeEnabled: true,
                          topCardWidget: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              periods_que[index]["que"],
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          bottomCardWidget: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              periods_que[index]["ans"],
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: periods_que.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    periods_words,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
