import 'package:flutter/material.dart';
import 'package:hm_test/core/constant/colors.dart';

import 'font_family.dart';

class HMStyle {
  static TextStyle defaultStyle = TextStyle(
    fontFamily: FontFamily.inter,
    color: AppColors.primary,
    fontSize: 12,

    height: 1.2, // Notes: Using Font Size without any baseline
  );
  static TextStyle blackDefaultStyle = TextStyle(
    fontFamily: FontFamily.inter,
    color: AppColors.black,
    fontSize: 12,

    height: 1.2, // Notes: Using Font Size without any baseline
  );
  static TextStyle whiteDefaultStyle = TextStyle(
    fontFamily: FontFamily.inter,
    color: AppColors.light[10],
    fontSize: 12,

    height: 1.2, // Notes: Using Font Size without any baseline
  );
  static TextStyle greyDefaultStyle = TextStyle(
    fontFamily: FontFamily.inter,
    color: AppColors.grey[500],
    fontSize: 12,

    height: 1.2, // Notes: Using Font Size without any baseline
  );
  static TextStyle redDefaultStyle = TextStyle(
    fontFamily: FontFamily.inter,
    color: AppColors.redNegative,
    fontSize: 12,

    height: 1.2, // Notes: Using Font Size without any baseline
  );

  static TextStyle greenDefaultStyle = TextStyle(
    fontFamily: FontFamily.inter,
    color: AppColors.primary,
    fontSize: 12,

    height: 1.2, // Notes: Using Font Size without any baseline
  );

  static TextStyle bold = defaultStyle.copyWith(fontWeight: FontWeight.w700);
  static TextStyle medium = defaultStyle.copyWith(fontWeight: FontWeight.w500);
  static TextStyle normal = defaultStyle.copyWith(fontWeight: FontWeight.w400);

  static TextStyle blackBold =
      blackDefaultStyle.copyWith(fontWeight: FontWeight.w700);
  static TextStyle blackMedium =
      blackDefaultStyle.copyWith(fontWeight: FontWeight.w500);
  static TextStyle blackNormal =
      blackDefaultStyle.copyWith(fontWeight: FontWeight.w400);

  static TextStyle whiteBold =
      whiteDefaultStyle.copyWith(fontWeight: FontWeight.w700);
  static TextStyle whiteMedium =
      whiteDefaultStyle.copyWith(fontWeight: FontWeight.w500);
  static TextStyle whiteNormal =
      whiteDefaultStyle.copyWith(fontWeight: FontWeight.w400);

  static TextStyle greyBold =
      greyDefaultStyle.copyWith(fontWeight: FontWeight.w700);
  static TextStyle greyMedium =
      greyDefaultStyle.copyWith(fontWeight: FontWeight.w500);
  static TextStyle greyNormal =
      greyDefaultStyle.copyWith(fontWeight: FontWeight.w400);

  static TextStyle redBold =
      redDefaultStyle.copyWith(fontWeight: FontWeight.w700);
  static TextStyle redMedium =
      redDefaultStyle.copyWith(fontWeight: FontWeight.w500);
  static TextStyle redNormal =
      redDefaultStyle.copyWith(fontWeight: FontWeight.w400);

  static TextStyle greenBold =
      greenDefaultStyle.copyWith(fontWeight: FontWeight.w700);
  static TextStyle greenMedium =
      greenDefaultStyle.copyWith(fontWeight: FontWeight.w500);
  static TextStyle greenNormal =
      greenDefaultStyle.copyWith(fontWeight: FontWeight.w400);

  // H1 - H4
  static Map<int, TextStyle> headlines = {
    1: bold.copyWith(fontSize: 30),
    2: bold.copyWith(fontSize: 24),
    3: bold.copyWith(fontSize: 20),
    4: medium.copyWith(fontSize: 18)
  };
  //H1 - H4 black
  static Map<int, TextStyle> blackHeadlines = {
    1: blackBold.copyWith(fontSize: 30),
    2: blackBold.copyWith(fontSize: 24),
    3: blackBold.copyWith(fontSize: 20),
    4: blackMedium.copyWith(fontSize: 18)
  };
  static Map<int, TextStyle> whiteHeadlines = {
    1: whiteBold.copyWith(fontSize: 30),
    2: whiteBold.copyWith(fontSize: 24),
    3: whiteBold.copyWith(fontSize: 20),
    4: whiteMedium.copyWith(fontSize: 18)
  };
  static Map<int, TextStyle> greyHeadlines = {
    1: greyBold.copyWith(fontSize: 30),
    2: greyBold.copyWith(fontSize: 24),
    3: greyBold.copyWith(fontSize: 20),
    4: greyMedium.copyWith(fontSize: 18)
  };
  static Map<int, TextStyle> redHeadlines = {
    1: redBold.copyWith(fontSize: 30),
    2: redBold.copyWith(fontSize: 24),
    3: redBold.copyWith(fontSize: 20),
    4: redMedium.copyWith(fontSize: 18),
  };
  static Map<int, TextStyle> greenHeadlines = {
    1: greenBold.copyWith(fontSize: 30),
    2: greenBold.copyWith(fontSize: 24),
    3: greenBold.copyWith(fontSize: 20),
    4: greenMedium.copyWith(fontSize: 18),
  };

  // subheaders/sub heading 1 & 2
  static Map<int, TextStyle> subHeaders = {
    1: defaultStyle.copyWith(fontSize: 15),
    2: medium.copyWith(fontSize: 16),
    3: medium.copyWith(fontSize: 15)
  };

  static Map<int, TextStyle> blackSubHeaders = {
    1: blackDefaultStyle.copyWith(fontSize: 15),
    2: blackMedium.copyWith(fontSize: 16),
    3: blackMedium.copyWith(fontSize: 15)
  };
  static Map<int, TextStyle> whiteSubHeaders = {
    1: whiteDefaultStyle.copyWith(fontSize: 15),
    2: whiteMedium.copyWith(fontSize: 16),
    3: whiteMedium.copyWith(fontSize: 15)
  };
  static Map<int, TextStyle> greySubHeaders = {
    1: greyDefaultStyle.copyWith(fontSize: 15),
    2: greyMedium.copyWith(fontSize: 16),
    3: greyMedium.copyWith(fontSize: 15)
  };
  static Map<int, TextStyle> redSubHeaders = {
    1: redDefaultStyle.copyWith(fontSize: 15),
    2: redMedium.copyWith(fontSize: 16),
    3: redMedium.copyWith(fontSize: 15)
  };
  static Map<int, TextStyle> greenSubHeaders = {
    1: greenDefaultStyle.copyWith(fontSize: 15),
    2: greenMedium.copyWith(fontSize: 16),
    3: greenMedium.copyWith(fontSize: 15)
  };

  static Map<int, TextStyle> titles = {
    1: bold.copyWith(fontSize: 16),
    2: medium.copyWith(fontSize: 16),
    3: defaultStyle.copyWith(fontSize: 16)
  };
  static Map<int, TextStyle> blackTitles = {
    1: blackBold.copyWith(fontSize: 16),
    2: blackMedium.copyWith(fontSize: 16),
    3: blackDefaultStyle.copyWith(fontSize: 16)
  };
  static Map<int, TextStyle> whiteTitles = {
    1: whiteBold.copyWith(fontSize: 16),
    2: whiteMedium.copyWith(fontSize: 16),
    3: whiteDefaultStyle.copyWith(fontSize: 16)
  };
  static Map<int, TextStyle> greyTitles = {
    1: greyBold.copyWith(fontSize: 16),
    2: greyMedium.copyWith(fontSize: 16),
    3: greyDefaultStyle.copyWith(fontSize: 16)
  };
  static Map<int, TextStyle> redTitles = {
    1: redBold.copyWith(fontSize: 16),
    2: redMedium.copyWith(fontSize: 16),
    3: redDefaultStyle.copyWith(fontSize: 16)
  };
  static Map<int, TextStyle> greenTitles = {
    1: greenBold.copyWith(fontSize: 16),
    2: greenMedium.copyWith(fontSize: 16),
    3: greenDefaultStyle.copyWith(fontSize: 16)
  };

  static TextStyle subtitle = defaultStyle.copyWith(fontSize: 14);
  static TextStyle blackSubtitle = blackDefaultStyle.copyWith(fontSize: 14);
  static TextStyle whiteSubtitle = whiteDefaultStyle.copyWith(fontSize: 14);
  static TextStyle greySubtitle = greyDefaultStyle.copyWith(fontSize: 14);
  static TextStyle redSubtitle = redDefaultStyle.copyWith(fontSize: 14);
  static TextStyle greenSubtitle = greenDefaultStyle.copyWith(fontSize: 14);

  static TextStyle boldSubtitle = bold.copyWith(fontSize: 14);
  static TextStyle blackBoldSubtitle = blackBold.copyWith(fontSize: 14);
  static TextStyle whiteBoldSubtitle = whiteBold.copyWith(fontSize: 14);
  static TextStyle greyBoldSubtitle = greyBold.copyWith(fontSize: 14);
  static TextStyle redBoldSubtitle = redBold.copyWith(fontSize: 14);
  static TextStyle greenBoldSubtitle = greenBold.copyWith(fontSize: 14);

  static Map<int, TextStyle> body = {
    1: medium.copyWith(fontSize: 14),
    2: defaultStyle.copyWith(
        fontSize: 13), // 3: => default style are 12px so use defaultStyle
    3: normal.copyWith(fontSize: 14)
  };
  static Map<int, TextStyle> blackBody = {
    1: blackMedium.copyWith(fontSize: 14),
    2: blackDefaultStyle.copyWith(
        fontSize: 13), // 3: => default style are 12px so use defaultStyle
    3: blackNormal.copyWith(fontSize: 14)
  };
  static Map<int, TextStyle> whiteBody = {
    1: whiteMedium.copyWith(fontSize: 14),
    2: whiteDefaultStyle.copyWith(
        fontSize: 13), // 3: => default style are 12px so use defaultStyle
    3: whiteNormal.copyWith(fontSize: 14)
  };
  static Map<int, TextStyle> greyBody = {
    1: greyMedium.copyWith(fontSize: 14),
    2: greyDefaultStyle.copyWith(
        fontSize: 13), // 3: => default style are 12px so use defaultStyle
    3: greyNormal.copyWith(fontSize: 14),
    4: greyDefaultStyle.copyWith(fontSize: 12),
    5: greyDefaultStyle.copyWith(fontSize: 14)
  };
  static Map<int, TextStyle> redBody = {
    1: redMedium.copyWith(fontSize: 14),
    2: redDefaultStyle.copyWith(
        fontSize: 13), // 3: => default style are 12px so use defaultStyle
    3: redNormal.copyWith(fontSize: 14),
    4: redDefaultStyle.copyWith(fontSize: 12),
  };
  static Map<int, TextStyle> greenBody = {
    1: greenMedium.copyWith(fontSize: 14),
    2: greenDefaultStyle.copyWith(
        fontSize: 13), // 3: => default style are 12px so use defaultStyle
    3: greenNormal.copyWith(fontSize: 14),
    4: greenDefaultStyle.copyWith(fontSize: 12),
  };

  static TextStyle caption = defaultStyle.copyWith(fontSize: 10);
  static TextStyle blackCaption = blackDefaultStyle.copyWith(fontSize: 10);
  static TextStyle whiteCaption = whiteDefaultStyle.copyWith(fontSize: 10);
  static TextStyle greyCaption = greyDefaultStyle.copyWith(fontSize: 10);
  static TextStyle redCaption = redDefaultStyle.copyWith(fontSize: 10);
  static TextStyle greenCaption = greenDefaultStyle.copyWith(fontSize: 10);
  static TextStyle whiteLabel = whiteDefaultStyle.copyWith(fontSize: 8);

  static Map<int, TextStyle> buttonText = {
    1: medium.copyWith(fontSize: 16),
    2: medium.copyWith(fontSize: 15)
  };
  static Map<int, TextStyle> blackButtonText = {
    1: blackMedium.copyWith(fontSize: 16),
    2: blackMedium.copyWith(fontSize: 15)
  };
  static Map<int, TextStyle> whiteButtonText = {
    1: whiteMedium.copyWith(fontSize: 16),
    2: whiteMedium.copyWith(fontSize: 15)
  };
  static Map<int, TextStyle> greyButtonText = {
    1: greyMedium.copyWith(fontSize: 16),
    2: greyMedium.copyWith(fontSize: 15)
  };
  static Map<int, TextStyle> redButtonText = {
    1: redMedium.copyWith(fontSize: 16),
    2: redMedium.copyWith(fontSize: 15)
  };
  static Map<int, TextStyle> greenButtonText = {
    1: greenMedium.copyWith(fontSize: 16),
    2: greenMedium.copyWith(fontSize: 15)
  };

  static Map<int, TextStyle> italicTexts = {
    1: defaultStyle.copyWith(fontSize: 16, fontStyle: FontStyle.italic),
    2: defaultStyle.copyWith(fontSize: 12, fontStyle: FontStyle.italic)
  };
  static Map<int, TextStyle> blackItalicTexts = {
    1: blackDefaultStyle.copyWith(fontSize: 16, fontStyle: FontStyle.italic),
    2: blackDefaultStyle.copyWith(fontSize: 12, fontStyle: FontStyle.italic)
  };
  static Map<int, TextStyle> whiteItalicTexts = {
    1: whiteDefaultStyle.copyWith(fontSize: 16, fontStyle: FontStyle.italic),
    2: whiteDefaultStyle.copyWith(fontSize: 12, fontStyle: FontStyle.italic)
  };
  static Map<int, TextStyle> greyItalicTexts = {
    1: greyDefaultStyle.copyWith(fontSize: 16, fontStyle: FontStyle.italic),
    2: greyDefaultStyle.copyWith(fontSize: 12, fontStyle: FontStyle.italic)
  };
  static Map<int, TextStyle> redItalicTexts = {
    1: redDefaultStyle.copyWith(fontSize: 16, fontStyle: FontStyle.italic),
    2: redDefaultStyle.copyWith(fontSize: 12, fontStyle: FontStyle.italic)
  };
  static Map<int, TextStyle> greenItalicTexts = {
    1: greenDefaultStyle.copyWith(fontSize: 16, fontStyle: FontStyle.italic),
    2: greenDefaultStyle.copyWith(fontSize: 12, fontStyle: FontStyle.italic)
  };

  static TextStyle inputField = defaultStyle.copyWith(
    // color: const Color(0xFF1D1D1D),
    fontSize: 16,
    height: 1.25,
    fontStyle: FontStyle.normal,
  );
  static TextStyle blackInputField = blackDefaultStyle.copyWith(
    // color: const Color(0xFF1D1D1D),
    fontSize: 16,
    height: 1.25,
    fontStyle: FontStyle.normal,
  );
  static TextStyle whiteInputField = whiteDefaultStyle.copyWith(
    // color: const Color(0xFF1D1D1D),
    fontSize: 16,
    height: 1.25,
    fontStyle: FontStyle.normal,
  );
  static TextStyle greyInputField = greyDefaultStyle.copyWith(
    // color: const Color(0xFF1D1D1D),
    fontSize: 16,
    height: 1.25,
    fontStyle: FontStyle.normal,
  );
  static TextStyle redInputField = redDefaultStyle.copyWith(
    // color: const Color(0xFF1D1D1D),
    fontSize: 16,
    height: 1.25,
    fontStyle: FontStyle.normal,
  );
  static TextStyle greenInputField = greenDefaultStyle.copyWith(
    // color: const Color(0xFF1D1D1D),
    fontSize: 16,
    height: 1.25,
    fontStyle: FontStyle.normal,
  );
}
