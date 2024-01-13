import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContainerExtension on Container {
  Container withPadding(double padding) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: decoration,
      margin: margin,
      child: child,
    );
  }

  Container withMargin(double margin) {
    return Container(
      margin: EdgeInsets.all(margin),
      decoration: decoration,
      padding: padding,
      child: child,
    );
  }

  Container withMarginSeparate(double marginLeft, double marginRight,
      double marginTop, double marginBottom) {
    return Container(
      margin: EdgeInsets.only(
          left: marginLeft,
          right: marginRight,
          bottom: marginBottom,
          top: marginTop),
      decoration: decoration,
      padding: padding,
      child: child,
    );
  }
}
