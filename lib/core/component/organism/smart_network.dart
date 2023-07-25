import 'package:flutter/material.dart';
import 'package:shamo_mobile/core/core.dart';

class SmartNetworkImage extends StatelessWidget {
  const SmartNetworkImage(
    this.url, {
    Key? key,
    this.width,
    this.height,
    this.fit,
    this.radius,
    this.withCache,
  }) : super(key: key);

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BorderRadius? radius;
  final bool? withCache;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.circular(Dimens.dp16),
      child: Image.network(
        url,
        width: width,
        height: height,
        fit: fit,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: SizedBox(
              width: width,
              height: height,
              child: const CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
