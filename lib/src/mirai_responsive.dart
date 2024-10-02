import 'dart:io';

import 'package:flutter/material.dart';

/*
* Created By Mirai Devs.
* On 8/18/2021.
*/

part 'package:mirai_responsive/src/controllers/mirai_size.dart';

part 'package:mirai_responsive/src/utils/enums.dart';

class MiraiResponsive extends StatelessWidget {
  const MiraiResponsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    this.desktop,
    this.landscapeMobileLayout,
    this.landscapeTabletLayout,
  }) : super(key: key);

  final Widget mobile;
  final Widget? landscapeMobileLayout;
  final Widget tablet;
  final Widget? landscapeTabletLayout;
  final Widget? desktop;

  /// isMobile
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 700;

  /// isTablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700 && MediaQuery.of(context).size.width < 1200;

  /// isDesktop
  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop ?? tablet;
        } else if (constraints.maxWidth >= 700) {
          return OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return tablet;
              } else {
                return landscapeTabletLayout ?? tablet;
              }
            },
          );
        } else {
          return OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return mobile;
              } else {
                return landscapeMobileLayout ?? mobile;
              }
            },
          );
        }
      },
    );
  }
}
