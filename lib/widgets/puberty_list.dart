import 'package:flutter/material.dart';

class PubertyList extends StatelessWidget {
  final List<String> puberty;

  PubertyList({this.puberty});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Text(
          puberty[index],
          style: TextStyle(height: 2.0, color: Colors.grey),
        );
      },
      itemCount: puberty.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
    );
  }
}
