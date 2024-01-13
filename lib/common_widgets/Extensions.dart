import 'package:flutter/cupertino.dart';

extension RoundedCorner on Container{
  Container withRoundedRadius(double radius){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius))
      ),
    );
  }
}