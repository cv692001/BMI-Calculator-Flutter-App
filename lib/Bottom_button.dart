import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.Bottomtitle, @required this.onPress});

  final String Bottomtitle;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            Bottomtitle,
            style: klargestringtext,
          ),
        ),
        padding: EdgeInsets.only(bottom: 20.0),
        color: bottom_container_color,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: Bottom_Container_height,
      ),
    );
  }
}
