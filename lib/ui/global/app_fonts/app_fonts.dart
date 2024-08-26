import 'package:flutter/material.dart';

// resource: https://www.figma.com/design/ZYSuIod8fBCxzF988g5N2S/DS%2FApp%2FTypography-%5BGlobal%5D?node-id=5-409&m=dev
class AppFonts {
  static TextStyle _style(
      double fontSize, FontWeight fontWeight, double height) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'Inter',
      height: height,
    );
  }

  static TextStyle _headingStyle(double fontSize, FontWeight fontWeight) {
    return _style(fontSize, fontWeight, 1.5).copyWith(letterSpacing: 0);
  }

  static const FontWeight _w400 = FontWeight.w400;
  static const FontWeight _w500 = FontWeight.w500;
  static const FontWeight _w600 = FontWeight.w600;

  // ------------- Heading Fonts ----------------
  static final headingH1w400 = _headingStyle(36, _w400);
  static final headingH1w500 = _headingStyle(36, _w500);
  static final headingH1w600 = _headingStyle(36, _w600);

  static final headingH2w400 = _headingStyle(32, _w400);
  static final headingH2w500 = _headingStyle(32, _w500);
  static final headingH2w600 = _headingStyle(32, _w600);

  static final headingH3w400 = _headingStyle(28, _w400);
  static final headingH3w500 = _headingStyle(28, _w500);
  static final headingH3w600 = _headingStyle(28, _w600);

  static final headingH4w400 = _headingStyle(24, _w400);
  static final headingH4w500 = _headingStyle(24, _w500);
  static final headingH4w600 = _headingStyle(24, _w600);

  static final headingH5w400 = _headingStyle(20, _w400);
  static final headingH5w500 = _headingStyle(20, _w500);
  static final headingH5w600 = _headingStyle(20, _w600);

  static final headingH6w400 = _headingStyle(16, _w400);
  static final headingH6w500 = _headingStyle(16, _w500);
  static final headingH6w600 = _headingStyle(16, _w600);

  // ------------- Title Fonts ------------------
  static final titleTitle1Slw400 = _style(20, _w400, 1.2);
  static final titleTitle1Slw500 = _style(20, _w500, 1.2);
  static final titleTitle1Slw600 = _style(20, _w600, 1.2);

  static final titleTitle1Dlw400 = _style(20, _w400, 1.5);
  static final titleTitle1Dlw500 = _style(20, _w500, 1.5);
  static final titleTitle1Dlw600 = _style(20, _w600, 1.5);

  static final titleTitle2Slw400 = _style(16, _w400, 1.25);
  static final titleTitle2Slw500 = _style(16, _w500, 1.25);
  static final titleTitle2Slw600 = _style(16, _w600, 1.25);

  static final titleTitle2Dlw400 = _style(16, _w400, 1.5);
  static final titleTitle2Dlw500 = _style(16, _w500, 1.5);
  static final titleTitle2Dlw600 = _style(16, _w600, 1.5);

  static final titleTitle3Slw400 = _style(14, _w400, 1.14286);
  static final titleTitle3Slw500 = _style(14, _w500, 1.14286);
  static final titleTitle3Slw600 = _style(14, _w600, 1.14286);

  static final titleTitle3Dlw400 = _style(14, _w400, 1.42857);
  static final titleTitle3Dlw500 = _style(14, _w500, 1.42857);
  static final titleTitle3Dlw600 = _style(14, _w600, 1.42857);

  // ------------- Subtitle Fonts ---------------
  static final subtitleSubtitle1Slw400 = _style(14, _w400, 1.14286);
  static final subtitleSubtitle1Slw500 = _style(14, _w500, 1.14286);
  static final subtitleSubtitle1Slw600 = _style(14, _w600, 1.14286);

  static final subtitleSubtitle1Dlw400 = _style(14, _w400, 1.42857);
  static final subtitleSubtitle1Dlw500 = _style(14, _w500, 1.42857);
  static final subtitleSubtitle1Dlw600 = _style(14, _w600, 1.42857);

  static final subtitleSubtitle2Slw400 = _style(13, _w400, 1.23077);
  static final subtitleSubtitle2Slw500 = _style(13, _w500, 1.23077);
  static final subtitleSubtitle2Slw600 = _style(13, _w600, 1.23077);

  static final subtitleSubtitle2Dlw400 = _style(13, _w400, 1.53846);
  static final subtitleSubtitle2Dlw500 = _style(13, _w500, 1.53846);
  static final subtitleSubtitle2Dlw600 = _style(13, _w600, 1.53846);

  // ------------- Body Fonts -------------------
  static final bodyBody1Slw400 = _style(16, _w400, 1.25);
  static final bodyBody1Slw500 = _style(16, _w500, 1.25);
  static final bodyBody1Slw600 = _style(16, _w600, 1.25);

  static final bodyBody1Dlw400 = _style(16, _w400, 1.5);
  static final bodyBody1Dlw500 = _style(16, _w500, 1.5);
  static final bodyBody1Dlw600 = _style(16, _w600, 1.5);

  static final bodyBody2Slw400 = _style(14, _w400, 1.14286);
  static final bodyBody2Slw500 = _style(14, _w500, 1.14286);
  static final bodyBody2Slw600 = _style(14, _w600, 1.14286);

  static final bodyBody2Dlw400 = _style(14, _w400, 1.42857);
  static final bodyBody2Dlw500 = _style(14, _w500, 1.42857);
  static final bodyBody2Dlw600 = _style(14, _w600, 1.42857);

  static final bodyBody3Slw400 = _style(13, _w400, 1.23077);
  static final bodyBody3Slw500 = _style(13, _w500, 1.23077);
  static final bodyBody3Slw600 = _style(13, _w600, 1.23077);

  static final bodyBody3Dlw400 = _style(13, _w400, 1.53846);
  static final bodyBody3Dlw500 = _style(13, _w500, 1.53846);
  static final bodyBody3Dlw600 = _style(13, _w600, 1.53846);

  // ------------- Highlighted Fonts ------------
  static final highlightedHighlighted1Slw400 = _style(14, _w400, 1.14286);
  static final highlightedHighlighted1Slw500 = _style(14, _w500, 1.14286);
  static final highlightedHighlighted1Slw600 = _style(14, _w600, 1.14286);

  static final highlightedHighlighted1Dlw400 = _style(14, _w400, 1.42857);
  static final highlightedHighlighted1Dlw500 = _style(14, _w500, 1.42857);
  static final highlightedHighlighted1Dlw600 = _style(14, _w600, 1.42857);

  static final highlightedHighlighted2Slw400 = _style(13, _w400, 1.23077);
  static final highlightedHighlighted2Slw500 = _style(13, _w500, 1.23077);
  static final highlightedHighlighted2Slw600 = _style(13, _w600, 1.23077);

  static final highlightedHighlighted2Dlw400 = _style(13, _w400, 1.53846);
  static final highlightedHighlighted2Dlw500 = _style(13, _w500, 1.53846);
  static final highlightedHighlighted2Dlw600 = _style(13, _w600, 1.53846);

  // ------------- Info Fonts -------------------
  static final infoInfo1Slw400 = _style(13, _w400, 1.23077);
  static final infoInfo1Slw500 = _style(13, _w500, 1.23077);
  static final infoInfo1Slw600 = _style(13, _w600, 1.23077);

  static final infoInfo1Dlw400 = _style(13, _w400, 1.53846);
  static final infoInfo1Dlw500 = _style(13, _w500, 1.53846);
  static final infoInfo1Dlw600 = _style(13, _w600, 1.53846);

  static final infoInfo2Slw400 = _style(12, _w400, 1.1667);
  static final infoInfo2Slw500 = _style(12, _w500, 1.1667);
  static final infoInfo2Slw600 = _style(12, _w600, 1.1667);

  static final infoInfo2Dlw400 = _style(12, _w400, 1.5);
  static final infoInfo2Dlw500 = _style(12, _w500, 1.5);
  static final infoInfo2Dlw600 = _style(12, _w600, 1.5);

  static final infoInfo3Slw400 = _style(11, _w400, 1.18182);
  static final infoInfo3Slw500 = _style(11, _w500, 1.18182);
  static final infoInfo3Slw600 = _style(11, _w600, 1.18182);

  static final infoInfo3Dlw400 = _style(11, _w400, 1.45455);
  static final infoInfo3Dlw500 = _style(11, _w500, 1.45455);
  static final infoInfo3Dlw600 = _style(11, _w600, 1.45455);

  // ------------- Caption Fonts ----------------
  static final captionCaption1Slw400 = _style(13, _w400, 1.23077);
  static final captionCaption1Slw500 = _style(13, _w500, 1.23077);
  static final captionCaption1Slw600 = _style(13, _w600, 1.23077);

  static final captionCaption1Dlw400 = _style(13, _w400, 1.53846);
  static final captionCaption1Dlw500 = _style(13, _w500, 1.53846);
  static final captionCaption1Dlw600 = _style(13, _w600, 1.53846);

  static final captionCaption2Slw400 = _style(12, _w400, 1.1667);
  static final captionCaption2Slw500 = _style(12, _w500, 1.1667);
  static final captionCaption2Slw600 = _style(12, _w600, 1.1667);

  static final captionCaption2Dlw400 = _style(12, _w400, 1.5);
  static final captionCaption2Dlw500 = _style(12, _w500, 1.5);
  static final captionCaption2Dlw600 = _style(12, _w600, 1.5);

  static final captionCaption3Slw400 = _style(11, _w400, 1.18182);
  static final captionCaption3Slw500 = _style(11, _w500, 1.18182);
  static final captionCaption3Slw600 = _style(11, _w600, 1.18182);

  static final captionCaption3Dlw400 = _style(11, _w400, 1.45455);
  static final captionCaption3Dlw500 = _style(11, _w500, 1.45455);
  static final captionCaption3Dlw600 = _style(11, _w600, 1.45455);

  // ------------- Overline Fonts ---------------
  static final overlineOverline1Slw400 = _style(13, _w400, 1.23077);
  static final overlineOverline1Slw500 = _style(13, _w500, 1.23077);
  static final overlineOverline1Slw600 = _style(13, _w600, 1.23077);

  static final overlineOverline1Dlw400 = _style(13, _w400, 1.53846);
  static final overlineOverline1Dlw500 = _style(13, _w500, 1.53846);
  static final overlineOverline1Dlw600 = _style(13, _w600, 1.53846);

  static final overlineOverline2Slw400 = _style(12, _w400, 1.1667);
  static final overlineOverline2Slw500 = _style(12, _w500, 1.1667);
  static final overlineOverline2Slw600 = _style(12, _w600, 1.1667);

  static final overlineOverline2Dlw400 = _style(12, _w400, 1.5);
  static final overlineOverline2Dlw500 = _style(12, _w500, 1.5);
  static final overlineOverline2Dlw600 = _style(12, _w600, 1.5);

  static final overlineOverline3Slw400 = _style(11, _w400, 1.18182);
  static final overlineOverline3Slw500 = _style(11, _w500, 1.18182);
  static final overlineOverline3Slw600 = _style(11, _w600, 1.18182);

  static final overlineOverline3Dlw400 = _style(11, _w400, 1.45455);
  static final overlineOverline3Dlw500 = _style(11, _w500, 1.45455);
  static final overlineOverline3Dlw600 = _style(11, _w600, 1.45455);
}
