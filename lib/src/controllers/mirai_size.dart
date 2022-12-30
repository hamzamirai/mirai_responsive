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

class MiraiSize extends ChangeNotifier {
  static MiraiResponsiveEnum responsiveEnum = MiraiResponsiveEnum.mobile;

  /// Screen
  static double screenWidth = 392.73;
  static double screenHeight = 856.73;
  static Orientation screenOrientation = Orientation.portrait;

  /// Text Sizes
  static double textSize36 = 36;
  static double textSize32 = 32;
  static double textSize30 = 30;
  static double textSize28 = 28;
  static double textSize26 = 26;
  static double textSize24 = 24;
  static double textSize20 = 20;
  static double textSize18 = 18;
  static double textSize16 = 16;
  static double textSize14 = 14;
  static double textSize12 = 12;
  static double textSize10 = 10;
  static double textSize8 = 8;

  /// Spaces
  static double space2 = 2;
  static double space4 = 4;
  static double space5 = 5;
  static double space6 = 6;
  static double space8 = 8;
  static double space10 = 10;
  static double space12 = 12;
  static double space14 = 14;
  static double space15 = 15;
  static double space16 = 16;
  static double space18 = 18;
  static double space20 = 20;
  static double space22 = 22;
  static double space24 = 24;
  static double space26 = 26;
  static double space28 = 28;
  static double space30 = 30;
  static double space32 = 32;
  static double space34 = 34;
  static double space36 = 36;
  static double space38 = 38;
  static double space40 = 40;
  static double space42 = 42;
  static double space44 = 44;
  static double space46 = 46;
  static double space48 = 48;
  static double space50 = 50;
  static double space56 = 56;
  static double space58 = 58;
  static double space60 = 60;
  static double space62 = 62;
  static double space66 = 66;
  static double space80 = 80;
  static double space86 = 86;

  /// Grid Count
  static int gridCount = 2;

  /// Splash
  static double splashLogoWidth = 120.0;
  static double splashLogoHeight = 176.0;
  static double bottomPadding = -400.0;
  static double paddingBottom = 16;

  /// Bottom Navigation Bar
  static double bottomNavBarHeight58 = 58;
  static double bottomNavBarHeight70 = 70;
  static double bottomNavBarHeight94 = 94;

  /// App Bar Background SVG
  static double appBarBackgroundHeight62 = 62;
  static double appBarBackgroundHeight96 = 96;
  static double appBarBackgroundHeight136 = 136;
  static double headerHeight172 = 172;
  static double headerHeight201 = 201;
  static double headerHeight210 = 210;
  static double headerHeight240 = 240;
  static double headerHeight260 = 260;
  static double headerHeight300 = 300;
  static final double navigationBarBottom = Platform.isIOS ? 16 : 2;

  /// Container Size for loading effects
  static double containerHeight3 = 3;
  static double containerHeight4 = 4;
  static double containerHeight8 = 8;
  static double containerHeight10 = 10;
  static double containerHeight12 = 12;
  static double containerHeight16 = 16;
  static double containerHeight18 = 18;
  static double containerHeight22 = 22;
  static double containerHeight26 = 26;
  static double containerHeight28 = 28;
  static double containerHeight32 = 32;
  static double containerHeight34 = 34;
  static double containerHeight40 = 40;
  static double containerHeight46 = 46;
  static double containerHeight48 = 48;
  static double containerHeight50 = 50;
  static double containerHeight52 = 52;
  static double containerHeight56 = 56;
  static double containerHeight58 = 58;
  static double containerHeight60 = 60;
  static double containerHeight68 = 68;
  static double containerHeight84 = 84;
  static double containerHeight90 = 90;
  static double containerHeight100 = 100;
  static double containerHeight110 = 110;
  static double containerHeight140 = 140;
  static double containerHeight160 = 160;
  static double containerHeight178 = 178;
  static double containerHeight230 = 230;
  static double containerHeight300 = 300;
  static double containerHeight350 = 350;
  static double containerHeight420 = 420;
  static double containerHeight500 = 500;

  // Width
  static double containerWidth2 = 2;
  static double containerWidth6 = 6;
  static double containerWidth10 = 10;
  static double containerWidth16 = 16;
  static double containerWidth18 = 18;
  static double containerWidth20 = 20;
  static double containerWidth24 = 24;
  static double containerWidth28 = 28;
  static double containerWidth30 = 30;
  static double containerWidth32 = 32;
  static double containerWidth36 = 36;
  static double containerWidth40 = 40;
  static double containerWidth52 = 52;
  static double containerWidth60 = 60;
  static double containerWidth66 = 66;
  static double containerWidth72 = 72;
  static double containerWidth80 = 80;
  static double containerWidth100 = 100;
  static double containerWidth120 = 120;
  static double containerWidth140 = 140;
  static double containerWidth160 = 160;
  static double containerWidth200 = 200;
  static double containerWidth240 = 240;
  static double containerWidth246 = 246;
  static double containerWidth260 = 260;

  /// Radius
  static double radius2 = 2;
  static double radius4 = 4;
  static double radius5 = 5;
  static double radius6 = 6;
  static double radius8 = 8;
  static double radius10 = 10;
  static double radius12 = 12;
  static double radius16 = 16;
  static double radius18 = 18;
  static double radius20 = 20;
  static double radius22 = 22;
  static double radius24 = 24;
  static double radius28 = 28;
  static double radius50 = 50;

  /// Border width
  static double borderWidth1 = 1;
  static double borderWidth2 = 2;
  static double borderWidth3 = 3;
  static double borderWidth4 = 4;
  static double borderWidth8 = 8;

  /// Image Sizes
  static double imageSize56 = 56;
  static double imageSize60 = 60;
  static double imageSize70 = 70;
  static double imageSize84 = 84;
  static double imageSize674 = 74;
  static double imageSize144 = 144;
  static double imageSize150 = 150;
  static double imageSize160 = 160;
  static double imageSize278 = 278;

  /// Icon Sizes
  static double iconSize10 = 10;
  static double iconSize12 = 12;
  static double iconSize16 = 16;
  static double iconSize14 = 14;
  static double iconSize18 = 18;
  static double iconSize20 = 20;
  static double iconSize22 = 22;
  static double iconSize24 = 24;
  static double iconSize26 = 26;
  static double iconSize28 = 28;
  static double iconSize30 = 30;
  static double iconSize32 = 32;
  static double iconSize34 = 34;
  static double iconSize36 = 36;
  static double iconSize38 = 38;
  static double iconSize40 = 40;
  static double iconSize42 = 42;
  static double iconSize44 = 44;
  static double iconSize48 = 48;
  static double iconSize50 = 50;
  static double iconSize58 = 58;
  static double iconSize60 = 60;
  static double iconSize62 = 62;
  static double iconSize64 = 64;
  static double iconSize66 = 66;
  static double iconSize70 = 70;
  static double iconSize82 = 82;
  static double iconSize98 = 98;

  /// Dialog Height
  static double dialogHeight420 = 420;

  /// Text Field Height
  static double textFieldHeight216 = 216;

  void init({required BoxConstraints constraints}) {
    screenWidth = constraints.maxWidth;
    screenHeight = constraints.maxHeight;

    /// Small Devices + 60
    if (screenWidth <= 320) {
      responsiveEnum = MiraiResponsiveEnum.smallMobile;

      /// Text Sizes
      textSize20 = 16;
      textSize18 = 14;
      textSize16 = 12;
      textSize14 = 10;
      textSize12 = 8;
      textSize10 = 6;
      textSize8 = 4;

      /// Spaces
      space2 = 0;
      space4 = 0;
      space6 = 2;
      space8 = 4;
      space10 = 6;
      space12 = 18;
      space14 = 10;
      space16 = 12;
      space18 = 14;
      space20 = 16;
      space22 = 18;
      space24 = 20;
      space26 = 22;
      space30 = 26;
    }

    /// Medium Devices
    else if (screenWidth > 320 && screenWidth <= 380) {
      responsiveEnum = MiraiResponsiveEnum.mediumMobile;

      /// Text Sizes
      textSize20 = 18;
      textSize18 = 16;
      textSize16 = 14;
      textSize14 = 12;
      textSize12 = 10;
      textSize10 = 8;
      textSize8 = 6;

      /// Spaces
      space2 = 0;
      space4 = 2;
      space6 = 4;
      space8 = 6;
      space10 = 8;
      space12 = 10;
      space14 = 12;
      space16 = 14;
      space18 = 16;
      space20 = 18;
      space22 = 20;
      space24 = 22;
      space26 = 24;
      space30 = 28;
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

  static void topSafeArea(double top) {
    appBarBackgroundHeight96 = 66 + top;
  }

  static void setPaddingBottom(double bottom) {
    paddingBottom = bottom;
  }
}
