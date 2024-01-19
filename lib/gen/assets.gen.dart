/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_add_story.png
  AssetGenImage get icAddStory =>
      const AssetGenImage('assets/icons/ic_add_story.png');

  /// File path: assets/icons/ic_bookmark.svg
  String get icBookmark => 'assets/icons/ic_bookmark.svg';

  /// File path: assets/icons/ic_campaign.svg
  String get icCampaign => 'assets/icons/ic_campaign.svg';

  /// File path: assets/icons/ic_filter.svg
  String get icFilter => 'assets/icons/ic_filter.svg';

  /// File path: assets/icons/ic_history.svg
  String get icHistory => 'assets/icons/ic_history.svg';

  /// File path: assets/icons/ic_home.svg
  String get icHome => 'assets/icons/ic_home.svg';

  /// File path: assets/icons/ic_like.svg
  String get icLike => 'assets/icons/ic_like.svg';

  /// File path: assets/icons/ic_right_arrow.svg
  String get icRightArrow => 'assets/icons/ic_right_arrow.svg';

  /// File path: assets/icons/ic_search.svg
  String get icSearch => 'assets/icons/ic_search.svg';

  /// File path: assets/icons/ic_voice.svg
  String get icVoice => 'assets/icons/ic_voice.svg';

  /// List of all assets
  List<dynamic> get values => [
        icAddStory,
        icBookmark,
        icCampaign,
        icFilter,
        icHistory,
        icHome,
        icLike,
        icRightArrow,
        icSearch,
        icVoice
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/banner_new_diet_item.png
  AssetGenImage get bannerNewDietItem =>
      const AssetGenImage('assets/images/banner_new_diet_item.png');

  /// File path: assets/images/banner_new_snack_item.png
  AssetGenImage get bannerNewSnackItem =>
      const AssetGenImage('assets/images/banner_new_snack_item.png');

  /// File path: assets/images/banner_new_snack_item_1.png
  AssetGenImage get bannerNewSnackItem1 =>
      const AssetGenImage('assets/images/banner_new_snack_item_1.png');

  /// File path: assets/images/banner_new_snack_item_2.png
  AssetGenImage get bannerNewSnackItem2 =>
      const AssetGenImage('assets/images/banner_new_snack_item_2.png');

  /// File path: assets/images/ic_dummy_user.png
  AssetGenImage get icDummyUser =>
      const AssetGenImage('assets/images/ic_dummy_user.png');

  /// File path: assets/images/ic_dummy_user_1.png
  AssetGenImage get icDummyUser1 =>
      const AssetGenImage('assets/images/ic_dummy_user_1.png');

  /// File path: assets/images/ic_dummy_user_2.png
  AssetGenImage get icDummyUser2 =>
      const AssetGenImage('assets/images/ic_dummy_user_2.png');

  /// File path: assets/images/ic_story_user_1.png
  AssetGenImage get icStoryUser1 =>
      const AssetGenImage('assets/images/ic_story_user_1.png');

  /// File path: assets/images/ic_story_user_2.png
  AssetGenImage get icStoryUser2 =>
      const AssetGenImage('assets/images/ic_story_user_2.png');

  /// File path: assets/images/ic_story_user_3.png
  AssetGenImage get icStoryUser3 =>
      const AssetGenImage('assets/images/ic_story_user_3.png');

  /// File path: assets/images/onboarding_1.svg
  String get onboarding1 => 'assets/images/onboarding_1.svg';

  /// File path: assets/images/onboarding_2.svg
  String get onboarding2 => 'assets/images/onboarding_2.svg';

  /// File path: assets/images/onboarding_3.svg
  String get onboarding3 => 'assets/images/onboarding_3.svg';

  /// List of all assets
  List<dynamic> get values => [
        bannerNewDietItem,
        bannerNewSnackItem,
        bannerNewSnackItem1,
        bannerNewSnackItem2,
        icDummyUser,
        icDummyUser1,
        icDummyUser2,
        icStoryUser1,
        icStoryUser2,
        icStoryUser3,
        onboarding1,
        onboarding2,
        onboarding3
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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
