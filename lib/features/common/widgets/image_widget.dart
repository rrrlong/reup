import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reup/assets/res/resources.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
    this.filePath, {
    super.key,
    this.isFromNetwork = false,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
  });
  final String filePath;
  final bool isFromNetwork;
  final double? height;
  final double? width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) =>
      isFromNetwork ? _buildFromNetwork() : _buildFromAsset();

  Widget _buildFromAsset() => filePath.endsWith("svg")
      ? SvgPicture.asset(
          filePath,
          height: height,
          width: width,
          fit: fit,
          placeholderBuilder: (context) => _error(),
        )
      : Image.asset(
          filePath,
          height: height,
          width: width,
          fit: fit,
          errorBuilder: (context, ob, _) => _error(),
        );

  Widget _buildFromNetwork() => filePath.endsWith("svg")
      ? SvgPicture.network(
          filePath,
          height: height,
          width: width,
          fit: fit,
          placeholderBuilder: (context) => _error(),
        )
      : CachedNetworkImage(
          imageUrl: filePath,
          height: height,
          width: width,
          fit: fit,
          errorWidget: (context, url, error) => _error(),
        );

  SvgPicture _error() {
    return SvgPicture.asset(
      SvgIcons.reupIcon,
      height: height,
      width: width,
    );
  }
}
