/*
* Created By Mirai Devs.
* On 8/30/2021.
*/

part of 'package:mirai_responsive/src/mirai_responsive.dart';

/// iOS Devices
/// iPad Pro 9.7 inch, screenWidth 768.0, screenHeight 1024.0
/// iPad Pro 12.9 inch, screenWidth 1024.0, screenHeight 1366.0
/// iPad Pro (11-inch) (3rd generation), screenWidth screenWidth 834.0, screenHeight 1194.0
/// iPad mini 6th gene, screenWidth 744.0, screenHeight 1133.0
/// iPad Air 5th gene, screenWidth 820.0, screenHeight 1180.0
/// iPad (9th generation), screenWidth 810.0, screenHeight 1080.0
/// iPod touch (7th generation), screenWidth 320.0, screenHeight 568.0
/// iPhone SE (3rd generation), screenWidth 375.0, screenHeight 667.0
/// Iphone 8, screenWidth 375.0, screenHeight 667.0
/// iPhone 8 Plus, screenWidth 414.0, screenHeight 736.0
/// Iphone pro 13 max, screenWidth 428.0, screenHeight 926.0
/// iPhone 13, 390.0, screenHeight 844.0
/// iPhone 13 mini, screenWidth 375.0, screenHeight 812.0
/// iPhone 13 Pro, screenWidth 390.0, screenHeight 844.0
/// iPhone 12 Pro Max, screenWidth 428.0, screenHeight 926.0,
/// iPhone 12 Pro, screenWidth 390.0, screenHeight 844.0
/// Phone 12, screenWidth 390.0, screenHeight 844.0
/// iPhone 12 mini, screenWidth 375.0, screenHeight 812.0
/// iPhone 11 Pro Max, screenWidth 414.0, screenHeight 896.0
/// iPhone 11 Pro, screenWidth 375.0, screenHeight 812.0
/// iPhone 11, screenWidth 414.0, screenHeight 896.0

/// Android Devices
/// Nexus 5x, screenWidth 411.428, screenHeight 683.428
/// Resizable, screenWidth 411.428, screenHeight 875.428
/// Pixel 3a, screenWidth 392.727, screenHeight 791.272
/// Pixel 4 XL, screenWidth 411.428, screenHeight 852.571
/// Tablet Pixel C, screenWidth 900.0, screenHeight 1220.0
/// Pixel 5, screenWidth 392.72, screenHeight 826.90
/// Pixel XL, screenWidth 411.42, screenHeight 707.42
/// Nexus S, screenWidth 320.0, screenHeight 533.33
/// Nexus 6, screenWidth 411.428, screenHeight 683.428
/// Nexus One, screenWidth 320.0, screenHeight 533.34
/// Pixel 3, screenWidth 392.72, screenHeight 769.45
/// 8 Fold-out, screenWidth 838.09, screenHeight 884.57
/// 6,7 Horizontal Fold-in, screenWidth 360.0, screenHeight 854.66
/// 7.4 Rollable, screenWidth 411.428, screenHeight 900.95
/// 7.6 Fold-in with outer display, screenWidth 673.52, screenHeight 780.95
/// Tablet Nexus 9, screenWidth 768.0, screenHeight 964.0
/// Tablet Nexus 7, screenWidth 600.0, screenHeight 900.0
/// Tablet Nexus 10, screenWidth 800.0, screenHeight 1220.0
/// 13.5 Freeform, screenWidth 412.0, screenHeight 732.0

///  Real Devices
///  Hamza, screenWidth 392.73, screenHeight 856.73
///  Abdejlail, screenWidth 360.0, screenHeight 756.0

/*
double width=MediaQuery.of(context).size.width;
int widthCard= (YOUR WIDTH FOR ONE COLOM);

int countRow=width~/widthCard;
 */

class MiraiSizeConfig extends ChangeNotifier {
  static MiraiResponsiveEnum responsiveEnum = MiraiResponsiveEnum.mobile;

  static double screenWidth = 392.73;
  static double screenHeight = 856.73;
  static Orientation screenOrientation = Orientation.portrait;

  /// Text Sizes
  static late double textSize20;
  static late double textSize18;
  static late double textSize16;
  static late double textSize14;
  static late double textSize12;
  static late double textSize10;
  static late double textSize8;

  /// Spaces
  static double space2 = 2;
  static double space4 = 4;
  static double space6 = 6;
  static double space8 = 8;
  static double space10 = 10;
  static double space12 = 12;
  static double space14 = 14;
  static double space16 = 16;
  static double space18 = 18;
  static double space20 = 20;
  static double space22 = 22;
  static double space24 = 24;
  static double space26 = 26;
  static double space30 = 30;

  /// Grid Count
  static double gridCount = 2;

  /// App Bar Background SVG
  static double appBarBackgroundHeight = 96;
  static final double navigationBarBottom = Platform.isIOS ? 16 : 2;

  void init({required BoxConstraints constraints}) {
    screenWidth = constraints.maxWidth;
    screenHeight = constraints.maxHeight;

    /// Small Devices + 60
    if (screenWidth <= 320) {
      responsiveEnum = MiraiResponsiveEnum.smallMobile;
    }

    /// Medium Devices
    else if (screenWidth > 320 && screenWidth <= 380) {
      responsiveEnum = MiraiResponsiveEnum.mediumMobile;
    }

    /// Normal Devices
    else if (screenWidth > 380 && screenWidth <= 440) {
      responsiveEnum = MiraiResponsiveEnum.mobile;

      /// Text Sizes
      textSize20 = 20;
      textSize18 = 18;
      textSize16 = 16;
      textSize14 = 14;
      textSize12 = 12;
      textSize10 = 10;
      textSize8 = 8;

      /// Spaces
      space2 = 2;
      space4 = 4;
      space6 = 6;
      space8 = 8;
      space10 = 10;
      space12 = 12;
      space14 = 14;
      space16 = 16;
      space18 = 18;
      space20 = 20;
      space22 = 22;
      space24 = 24;
      space26 = 26;
      space30 = 30;
    }

    /// mobile
    else if (screenWidth > 440 && screenWidth <= 500) {
      responsiveEnum = MiraiResponsiveEnum.mobile;
    }

    /// mobile
    else if (screenWidth > 500 && screenWidth <= 660) {
      responsiveEnum = MiraiResponsiveEnum.mobile;
      gridCount = 3;
    }

    /// largeMobile
    else if (screenWidth > 660 && screenWidth <= 720) {
      responsiveEnum = MiraiResponsiveEnum.largeMobile;
      gridCount = 3;
    }

    /// xLargeMobile
    else if (screenWidth > 720 && screenWidth <= 780) {
      responsiveEnum = MiraiResponsiveEnum.xLargeMobile;
      gridCount = 4;
    }

    /// xLargeMobile
    else if (screenWidth > 780 && screenWidth <= 840) {
      responsiveEnum = MiraiResponsiveEnum.xLargeMobile;
      gridCount = 4;
    }

    /// tablet
    else if (screenWidth > 840 && screenWidth <= 900) {
      responsiveEnum = MiraiResponsiveEnum.tablet;
      gridCount = 5;
    }

    /// tablet
    else if (screenWidth > 900 && screenWidth <= 960) {
      responsiveEnum = MiraiResponsiveEnum.tablet;
    }

    /// tablet
    else if (screenWidth > 960 && screenWidth <= 1020) {
      responsiveEnum = MiraiResponsiveEnum.tablet;
    }

    /// tablet
    else if (screenWidth > 1020 && screenWidth <= 1080) {
      responsiveEnum = MiraiResponsiveEnum.tablet;
    }

    /// tablet
    else if (screenWidth > 1080 && screenWidth <= 1140) {
      responsiveEnum = MiraiResponsiveEnum.tablet;
    }

    /// tablet
    else if (screenWidth >= 1140 && screenWidth <= 1200) {
      responsiveEnum = MiraiResponsiveEnum.tablet;
    }

    /// desktop
    else {
      responsiveEnum = MiraiResponsiveEnum.desktop;
    }
  }

  void topSafeArea(double top) {
    appBarBackgroundHeight = 66 + top;
  }
}
