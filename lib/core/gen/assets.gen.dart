// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImgsGen {
  const $AssetsImgsGen();

  /// File path: assets/imgs/Mosque-02.png
  AssetGenImage get mosque02 =>
      const AssetGenImage('assets/imgs/Mosque-02.png');

  /// File path: assets/imgs/ic_splash.png
  AssetGenImage get icSplash =>
      const AssetGenImage('assets/imgs/ic_splash.png');

  /// Directory path: assets/imgs/navbar_icons
  $AssetsImgsNavbarIconsGen get navbarIcons =>
      const $AssetsImgsNavbarIconsGen();

  /// Directory path: assets/imgs/onboarding
  $AssetsImgsOnboardingGen get onboarding => const $AssetsImgsOnboardingGen();

  /// Directory path: assets/imgs/tasbih
  $AssetsImgsTasbihGen get tasbih => const $AssetsImgsTasbihGen();

  /// List of all assets
  List<AssetGenImage> get values => [mosque02, icSplash];
}

class $AssetsImgsNavbarIconsGen {
  const $AssetsImgsNavbarIconsGen();

  /// File path: assets/imgs/navbar_icons/ic_hadeth.png
  AssetGenImage get icHadeth =>
      const AssetGenImage('assets/imgs/navbar_icons/ic_hadeth.png');

  /// File path: assets/imgs/navbar_icons/ic_quran.png
  AssetGenImage get icQuran =>
      const AssetGenImage('assets/imgs/navbar_icons/ic_quran.png');

  /// File path: assets/imgs/navbar_icons/ic_radio.png
  AssetGenImage get icRadio =>
      const AssetGenImage('assets/imgs/navbar_icons/ic_radio.png');

  /// File path: assets/imgs/navbar_icons/ic_sebha.png
  AssetGenImage get icSebha =>
      const AssetGenImage('assets/imgs/navbar_icons/ic_sebha.png');

  /// File path: assets/imgs/navbar_icons/ic_time.png
  AssetGenImage get icTime =>
      const AssetGenImage('assets/imgs/navbar_icons/ic_time.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    icHadeth,
    icQuran,
    icRadio,
    icSebha,
    icTime,
  ];
}

class $AssetsImgsOnboardingGen {
  const $AssetsImgsOnboardingGen();

  /// File path: assets/imgs/onboarding/Frame 3-1.png
  AssetGenImage get frame31 =>
      const AssetGenImage('assets/imgs/onboarding/Frame 3-1.png');

  /// File path: assets/imgs/onboarding/Frame 3-2.png
  AssetGenImage get frame32 =>
      const AssetGenImage('assets/imgs/onboarding/Frame 3-2.png');

  /// File path: assets/imgs/onboarding/Frame 3-3.png
  AssetGenImage get frame33 =>
      const AssetGenImage('assets/imgs/onboarding/Frame 3-3.png');

  /// File path: assets/imgs/onboarding/Frame 3.png
  AssetGenImage get frame3 =>
      const AssetGenImage('assets/imgs/onboarding/Frame 3.png');

  /// File path: assets/imgs/onboarding/Group 31.png
  AssetGenImage get group31 =>
      const AssetGenImage('assets/imgs/onboarding/Group 31.png');

  /// File path: assets/imgs/onboarding/onboarding2.png
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/imgs/onboarding/onboarding2.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    frame31,
    frame32,
    frame33,
    frame3,
    group31,
    onboarding2,
  ];
}

class $AssetsImgsTasbihGen {
  const $AssetsImgsTasbihGen();

  /// File path: assets/imgs/tasbih/Group 37.png
  AssetGenImage get group37 =>
      const AssetGenImage('assets/imgs/tasbih/Group 37.png');

  /// File path: assets/imgs/tasbih/SebhaBody 1.png
  AssetGenImage get sebhaBody1 =>
      const AssetGenImage('assets/imgs/tasbih/SebhaBody 1.png');

  /// File path: assets/imgs/tasbih/sebha_bg.png
  AssetGenImage get sebhaBg =>
      const AssetGenImage('assets/imgs/tasbih/sebha_bg.png');

  /// List of all assets
  List<AssetGenImage> get values => [group37, sebhaBody1, sebhaBg];
}

abstract final class Assets {
  static const $AssetsImgsGen imgs = $AssetsImgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
