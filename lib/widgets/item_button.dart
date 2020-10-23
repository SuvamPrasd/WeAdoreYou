import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  final double left;
  final double right;
  final Color btnColor;
  final String btnTitle;
  final String routeName;

  ItemButton(
      {this.left, this.right, this.btnColor, this.btnTitle, this.routeName});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Text(
        btnTitle,
        style: TextStyle(color: Colors.white),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      borderSide: BorderSide(
        color: btnColor,
      ),
      padding: EdgeInsets.only(
        left: left,
        right: right,
        top: 10,
        bottom: 10,
      ),
    );
  }
}
