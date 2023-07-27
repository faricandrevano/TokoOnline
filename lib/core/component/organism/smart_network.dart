import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rupiah_wallet/core/core.dart';

class SmartNetworkImage extends StatelessWidget {
  const SmartNetworkImage(
    this.url, {
    Key? key,
    this.width,
    this.height,
    this.fit,
    this.radius,
    this.withCache,
    this.address,
  }) : super(key: key);

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BorderRadius? radius;
  final bool? withCache;
  final String? address;

  ImageProvider get _provider =>
      (withCache == true ? CachedNetworkImageProvider(url) : NetworkImage(url))
          as ImageProvider<Object>;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.circular(0),
      child: FadeInImage(
        image: _provider,
        width: width,
        height: height,
        fit: fit,
        placeholderFit: BoxFit.cover,
        placeholder: const AssetImage(
          MainAssets.placeholderImg,
        ),
        imageErrorBuilder: (context, _, __) {
          if (address != null) {
            return SvgPicture.network(
              'https://avatars.dicebear.com/api/identicon/$address.svg',
              width: width,
              height: height,
              fit: fit ?? BoxFit.cover,
            );
          } else {
            return Image.asset(
              MainAssets.placeholderImg,
              width: width,
              height: height,
              fit: fit,
            );
          }
        },
      ),
    );
  }
}
