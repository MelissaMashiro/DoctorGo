import 'package:flutter/material.dart';

import 'CircleButton.dart';
class StepsHeader extends StatelessWidget {
  StepsHeader(
      {this.colorOne,
      this.colorTwo,
      this.colorTree,
      this.onTapOne,
      this.onTapTwo,
      this.onTapTree});

  final Color colorOne;
  final Color colorTwo;
  final Color colorTree;
  final Function onTapOne;
  final Function onTapTwo;
  final Function onTapTree;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CircleButton(
          onTap: onTapOne,
          text: '1',
          backgrounColor: colorOne,
        ),
        CircleButton(
          onTap: onTapTwo,
          text: '2',
          backgrounColor: colorTwo,
        ),
        CircleButton(
          onTap: onTapTree,
          text: '3',
          backgrounColor: colorTree,
        ),
      ],
    );
  }
}