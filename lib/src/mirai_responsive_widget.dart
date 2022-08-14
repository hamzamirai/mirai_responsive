import 'package:flutter/material.dart';

/*
* Created By Mirai Devs.
* On 8/18/2021.
*/

class MiraiResponsive extends StatelessWidget {

  const MiraiResponsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.landscapeMobileLayout,
    this.landscapeTabletLayout,
  }) : super(key: key);

  final Widget mobile;
  final Widget? landscapeMobileLayout;
  final Widget? tablet;
  final Widget? landscapeTabletLayout;
  final Widget desktop;

  /// isMobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  /// isTablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;

  /// isDesktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop;
        } else if (constraints.maxWidth >= 800) {
          return OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return tablet ?? mobile;
              } else {
                return landscapeTabletLayout ?? tablet ?? mobile;
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
