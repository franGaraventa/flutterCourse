import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  final String imageRoute;
  final String assetImageDescription;
  final bool imageFromNetwork;
  final double imageWidth;

  AssetImageWidget(
      {Key key,
      this.imageRoute = 'assets/joker.jpg',
      this.assetImageDescription = "Joker Image from Assets",
      this.imageFromNetwork = false,
      this.imageWidth = 300})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !imageFromNetwork
        ? Column(children: [
            Image.asset(
              imageRoute,
              width: imageWidth,
            ),
            Text(assetImageDescription)
          ])
        : Column(children: [
            Image.network(
              imageRoute,
              width: imageWidth,
            )
          ]);
  }
}
