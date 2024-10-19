import 'package:flutter/material.dart';

/// A tab to display in a [CrystalNavigationBar]
class CrystalNavigationBarItem {
  /// An icon to display.
  final IconData? icon;

  /// An icon to display.
  final IconData? unselectedIcon;

  /// A primary color to use for this tab.
  final Color? selectedColor;
  final Widget? child;
  final Widget? unselectedChild;

  /// The color to display when this tab is not selected.
  final Color? unselectedColor;

  CrystalNavigationBarItem({
    this.icon,
    this.unselectedIcon,
    this.unselectedChild,
    this.child,
    this.selectedColor,
    this.unselectedColor,
  });
}
