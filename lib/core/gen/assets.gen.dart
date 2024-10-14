/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:lottie/lottie.dart' as _lottie;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_long.svg
  SvgGenImage get arrowLong => const SvgGenImage('assets/icons/arrow_long.svg');

  /// File path: assets/icons/arrow_right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrow_right.svg');

  /// File path: assets/icons/comments.svg
  SvgGenImage get comments => const SvgGenImage('assets/icons/comments.svg');

  /// File path: assets/icons/download.svg
  SvgGenImage get download => const SvgGenImage('assets/icons/download.svg');

  /// File path: assets/icons/email.svg
  SvgGenImage get email => const SvgGenImage('assets/icons/email.svg');

  /// File path: assets/icons/explore.svg
  SvgGenImage get explore => const SvgGenImage('assets/icons/explore.svg');

  /// File path: assets/icons/favorite_border.svg
  SvgGenImage get favoriteBorder =>
      const SvgGenImage('assets/icons/favorite_border.svg');

  /// File path: assets/icons/hide_password.svg
  SvgGenImage get hidePassword =>
      const SvgGenImage('assets/icons/hide_password.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/locked.svg
  SvgGenImage get locked => const SvgGenImage('assets/icons/locked.svg');

  /// File path: assets/icons/notifications.svg
  SvgGenImage get notifications =>
      const SvgGenImage('assets/icons/notifications.svg');

  /// File path: assets/icons/post_save.svg
  SvgGenImage get postSave => const SvgGenImage('assets/icons/post_save.svg');

  /// File path: assets/icons/save_post_fill.svg
  SvgGenImage get savePostFill =>
      const SvgGenImage('assets/icons/save_post_fill.svg');

  /// File path: assets/icons/show_password.svg
  SvgGenImage get showPassword =>
      const SvgGenImage('assets/icons/show_password.svg');

  /// File path: assets/icons/tag.svg
  SvgGenImage get tag => const SvgGenImage('assets/icons/tag.svg');

  /// File path: assets/icons/user_avatar.svg
  SvgGenImage get userAvatar =>
      const SvgGenImage('assets/icons/user_avatar.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        arrowLong,
        arrowRight,
        comments,
        download,
        email,
        explore,
        favoriteBorder,
        hidePassword,
        home,
        locked,
        notifications,
        postSave,
        savePostFill,
        showPassword,
        tag,
        userAvatar
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/person_1.png
  AssetGenImage get person1 =>
      const AssetGenImage('assets/images/person_1.png');

  /// File path: assets/images/person_2.png
  AssetGenImage get person2 =>
      const AssetGenImage('assets/images/person_2.png');

  /// File path: assets/images/person_3.png
  AssetGenImage get person3 =>
      const AssetGenImage('assets/images/person_3.png');

  /// File path: assets/images/person_4.png
  AssetGenImage get person4 =>
      const AssetGenImage('assets/images/person_4.png');

  /// File path: assets/images/person_5.png
  AssetGenImage get person5 =>
      const AssetGenImage('assets/images/person_5.png');

  /// File path: assets/images/person_6.png
  AssetGenImage get person6 =>
      const AssetGenImage('assets/images/person_6.png');

  /// File path: assets/images/person_7.png
  AssetGenImage get person7 =>
      const AssetGenImage('assets/images/person_7.png');

  /// File path: assets/images/post.png
  AssetGenImage get post => const AssetGenImage('assets/images/post.png');

  /// File path: assets/images/post_1.jpg
  AssetGenImage get post1 => const AssetGenImage('assets/images/post_1.jpg');

  /// File path: assets/images/post_2.jpg
  AssetGenImage get post2 => const AssetGenImage('assets/images/post_2.jpg');

  /// File path: assets/images/post_3.jpg
  AssetGenImage get post3 => const AssetGenImage('assets/images/post_3.jpg');

  /// File path: assets/images/post_4.jpg
  AssetGenImage get post4 => const AssetGenImage('assets/images/post_4.jpg');

  /// File path: assets/images/post_5.jpg
  AssetGenImage get post5 => const AssetGenImage('assets/images/post_5.jpg');

  /// File path: assets/images/story.png
  AssetGenImage get story => const AssetGenImage('assets/images/story.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        person1,
        person2,
        person3,
        person4,
        person5,
        person6,
        person7,
        post,
        post1,
        post2,
        post3,
        post4,
        post5,
        story
      ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/loading_login.json
  LottieGenImage get loadingLogin =>
      const LottieGenImage('assets/lottie/loading_login.json');

  /// File path: assets/lottie/loginmorado.json
  LottieGenImage get loginmorado =>
      const LottieGenImage('assets/lottie/loginmorado.json');

  /// List of all assets
  List<LottieGenImage> get values => [loadingLogin, loginmorado];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
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
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(
    this._assetName, {
    this.flavors = const {},
  });

  final String _assetName;
  final Set<String> flavors;

  _lottie.LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    _lottie.FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    _lottie.LottieDelegates? delegates,
    _lottie.LottieOptions? options,
    void Function(_lottie.LottieComposition)? onLoaded,
    _lottie.LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(
      BuildContext,
      Widget,
      _lottie.LottieComposition?,
    )? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return _lottie.Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
