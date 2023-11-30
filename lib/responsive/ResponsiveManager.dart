import 'package:flutter/material.dart';

const double mobileBreakpoint = 600.0;
const double tabletBreakpoint = 900.0;

bool isMobile(double width) => width < mobileBreakpoint;

bool isTablet(double width) =>
    width >= mobileBreakpoint && width < tabletBreakpoint;

bool isDesktop(double width) => width >= tabletBreakpoint;

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        if (isMobile(width)) {
          return mobile;
        } else if (isTablet(width)) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
