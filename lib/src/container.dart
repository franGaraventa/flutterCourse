import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/utils/dimension.dart';

class ContainerWidget extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final double containerMargin;
  final double containerPadding;
  final double containerBoxDecorationBorder;
  final double containerBoxDecorationBorderRadius;
  final double containerBoxDecorationBoxShadowOffset;
  final double containerTransformRotationZ;

  ContainerWidget({
    Key key,
    this.containerHeight = Dimension.containerHeight,
    this.containerWidth = Dimension.containerWidth,
    this.containerMargin = Dimension.containerMargin,
    this.containerPadding = Dimension.containerPadding,
    this.containerBoxDecorationBorder = Dimension.containerBoxDecorationBorder,
    this.containerBoxDecorationBorderRadius = Dimension
        .containerBoxDecorationBorderRadius,
    this.containerBoxDecorationBoxShadowOffset = Dimension
        .containerBoxDecorationBoxShadowOffset,
    this.containerTransformRotationZ = Dimension.containerTransformRotationZ
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      margin: EdgeInsets.all(containerMargin),
      padding: EdgeInsets.all(containerPadding),
      decoration: BoxDecoration(
          border: Border.all(
              width: containerBoxDecorationBorder,
              color: Colors.black),
          color: Colors.blueAccent.shade200,
          borderRadius: BorderRadius.circular(
              containerBoxDecorationBorderRadius),
          boxShadow: [
            BoxShadow(
                color: Colors.blueGrey,
                offset: Offset(containerBoxDecorationBoxShadowOffset,
                    containerBoxDecorationBoxShadowOffset))
          ]),
      child: Text("Text into Container"),
      transform: Matrix4.rotationZ(containerTransformRotationZ),
    );
  }
}
