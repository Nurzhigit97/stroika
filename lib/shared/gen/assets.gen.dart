/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/background_image.png
  AssetGenImage get backgroundImage =>
      const AssetGenImage('assets/images/png/background_image.png');

  /// File path: assets/images/png/item1.png
  AssetGenImage get item1 => const AssetGenImage('assets/images/png/item1.png');

  /// File path: assets/images/png/item2.png
  AssetGenImage get item2 => const AssetGenImage('assets/images/png/item2.png');

  /// File path: assets/images/png/item3.png
  AssetGenImage get item3 => const AssetGenImage('assets/images/png/item3.png');

  /// File path: assets/images/png/item4.png
  AssetGenImage get item4 => const AssetGenImage('assets/images/png/item4.png');

  /// File path: assets/images/png/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/png/logo.png');

  /// File path: assets/images/png/main1.png
  AssetGenImage get main1 => const AssetGenImage('assets/images/png/main1.png');

  /// File path: assets/images/png/main2.png
  AssetGenImage get main2 => const AssetGenImage('assets/images/png/main2.png');

  /// File path: assets/images/png/main3.png
  AssetGenImage get main3 => const AssetGenImage('assets/images/png/main3.png');

  /// File path: assets/images/png/main4.png
  AssetGenImage get main4 => const AssetGenImage('assets/images/png/main4.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        backgroundImage,
        item1,
        item2,
        item3,
        item4,
        logo,
        main1,
        main2,
        main3,
        main4
      ];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/images/svg/apple.svg');

  /// File path: assets/images/svg/facebook.svg
  SvgGenImage get facebook =>
      const SvgGenImage('assets/images/svg/facebook.svg');

  /// File path: assets/images/svg/google.svg
  SvgGenImage get google => const SvgGenImage('assets/images/svg/google.svg');

  /// File path: assets/images/svg/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/images/svg/logo.svg');

  /// File path: assets/images/svg/two_circle.svg
  SvgGenImage get twoCircle =>
      const SvgGenImage('assets/images/svg/two_circle.svg');

  /// List of all assets
  List<SvgGenImage> get values => [apple, facebook, google, logo, twoCircle];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
