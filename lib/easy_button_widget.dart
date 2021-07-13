import 'dart:ui';

import 'package:flutter/material.dart';

class EasyButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final bool on;
  final String text;
  final int animationDuration;
  final double minWidthOfItem;
  final double minHeightOfItem;
  final Color deActiveItemColor;
  final Color activeItemColor;
  final TextStyle activeTextStyle;
  final TextStyle deActiveTextStyle;
  final double activeBorderRadius;
  final double deActiveBorderRadius;

  EasyButtonWidget(
      {required this.onPressed,
      required this.on,
      required this.text,
      required this.animationDuration,
      required this.minWidthOfItem,
      required this.minHeightOfItem,
      required this.deActiveItemColor,
      required this.activeItemColor,
      required this.activeTextStyle,
      required this.deActiveTextStyle,
      required this.activeBorderRadius,
      required this.deActiveBorderRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
          duration: Duration(milliseconds: animationDuration),
          constraints: BoxConstraints(
              minWidth: minWidthOfItem, minHeight: minHeightOfItem),
          child: Center(
            child: Text(text,
                style: on
                    ? activeTextStyle
                    /*Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Colors.white)*/
                    : deActiveTextStyle) /*Theme.of(context).textTheme.subtitle1)*/,
          ),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
              color: on ? activeItemColor : deActiveItemColor,
              borderRadius: on
                  ? BorderRadius.circular(activeBorderRadius)
                  : BorderRadius.circular(deActiveBorderRadius))),
    );
  }
}
