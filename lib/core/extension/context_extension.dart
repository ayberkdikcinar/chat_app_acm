import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get lowValue => height * 0.01;
  double get lowPlus => height * 0.015;
  double get normalValue => height * 0.02;
  double get normalPlus => height * 0.035;
  double get mediumValue => height * 0.05;
  double get mediumPlusValue => height * 0.08;
  double get highValue => height * 0.1;
  double get highPlusValue => height * 0.15;
  double get ultraHighValue => height * 0.2;
}

extension EmptySpaceExtension on BuildContext {
  SizedBox get emptySpaceLowHeight => SizedBox(height: lowValue);
  SizedBox get emptySpaceNormalHeight => SizedBox(height: normalValue);
  SizedBox get emptySpaceMediumHeight => SizedBox(height: mediumValue);
  SizedBox get emptySpaceLowWidth => SizedBox(width: lowValue);
  SizedBox get emptySpaceNormalWidth => SizedBox(width: normalValue);
  SizedBox get emptySpaceMediumWidth => SizedBox(width: mediumValue);
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
}

extension PaddingExtensionSymetric on BuildContext {
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingNormalVertical => EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get paddingMediumVertical => EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingHighVertical => EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingLowHorizontal => EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingNormalHorizontal => EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get paddingMediumHorizontal => EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHighHorizontal => EdgeInsets.symmetric(horizontal: highValue);
}

extension PaddingExtensionOnly on BuildContext {
  EdgeInsets paddingOnlyTop(double val) => EdgeInsets.only(top: val);
  EdgeInsets paddingOnlyBottom(double val) => EdgeInsets.only(bottom: val);
  EdgeInsets paddingOnlyLeft(double val) => EdgeInsets.only(left: val);
  EdgeInsets paddingOnlyRight(double val) => EdgeInsets.only(right: val);
}
