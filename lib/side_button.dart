import 'package:flutter/material.dart';

class SideButton extends StatelessWidget {
  IconData the_icon;
  SideButton({Key? key, required this.the_icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //IconData? the_icon;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      width: 62,
      height: 62,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          //borderRadius:BorderRadius.
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.lightBlue, offset: Offset(3, 3), blurRadius: 5)
          ]),
      child: Icon(
        the_icon,
      ),
    );
  }
}
