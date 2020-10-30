import 'package:flutter/material.dart';
import '../utilities/details.dart';

class Health extends StatelessWidget {
  static const routeName = '/health';

  @override
  Widget build(BuildContext context) {
    double _deviceWidth = MediaQuery.of(context).size.width;

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
          child: Container(
            width: _deviceWidth,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/breastfeed.jpg',
                    ),
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    health,
                    style: TextStyle(
                      height: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5.0,
                        shadowColor: Colors.grey[50],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: Icon(
                              Icons.star,
                              color: Colors.red[200],
                            ),
                            title: Text(
                              health_issues[index],
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text('with solution'),
                            trailing: Text(
                              'TAP',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            enabled: true,
                            onTap: () =>
                                {_showDetails(context, index, _deviceWidth)},
                          ),
                        ),
                      );
                    },
                    itemCount: health_issues.length,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showDetails(
      BuildContext context, int index, double _deviceWidth) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              health_issues[index],
              style: TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.red[300]),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    health_ans[index]["des"],
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Solution",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    health_ans[index]["ans"],
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              RaisedButton(
                elevation: 0,
                color: Colors.red,
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
