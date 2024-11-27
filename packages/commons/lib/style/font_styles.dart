import 'package:commons/style/color_theme.dart';
import 'package:flutter/material.dart';

class TypographyTheme {
  static const fontFamilyTitle = 'Roboto';
  static const fontFamilyText = 'Nunito-Sans';
  static const fontH1TextColor = TextStyle(
    fontSize: 32,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0.01,
    color: ColorsTheme.textColor,
  );
  static const fontH1accentForest = TextStyle(
    fontSize: 32,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0.01,
    color: ColorsTheme.accentForest,
  );
  static const fontH2 = TextStyle(
    fontSize: 24,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0.005,
    color: ColorsTheme.textColor,
  );
  static final fontH2primaryCoast = fontH2.merge(const TextStyle(
    color: ColorsTheme.primaryCoast,
  ));
  static final fontH2accentForest = fontH2.merge(
    const TextStyle(
      color: ColorsTheme.accentForest,
    ),
  );
  static final fontH2Placeholder = fontH2.merge(
    const TextStyle(
      color: ColorsShadesTheme.placeholderText,
    ),
  );
  static const fontH3 = TextStyle(
    fontSize: 20,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0.01,
    color: ColorsTheme.textColor,
  );
  static const fontH3White = TextStyle(
    fontSize: 20,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0.01,
    color: ColorsTheme.textColor,
  );
  static final fontH3AccentBlue = fontH3.merge(const TextStyle(
    color: ColorsTheme.accentForest,
  ));
  // style not included in the typography table
  static const fontH4 = TextStyle(
    fontSize: 18,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w700,
    height: 24 / 18,
    letterSpacing: 0.01,
    color: ColorsTheme.textColor,
  );
  static final fontH4accentForest = fontH4.merge(const TextStyle(
    color: ColorsTheme.accentForest,
  ));
  static final fontH4accentOlive = fontH4.merge(const TextStyle(
    color: ColorsTheme.accentOlive,
  ));
  // style not included in the typography table
  static const fontH5 = TextStyle(
    fontSize: 16,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w600,
    height: 24 / 16,
    letterSpacing: 0.0125,
    color: ColorsTheme.textColor,
  );
  // style for menu items
  static final fontH5primaryCoast = fontH4.merge(const TextStyle(
    color: ColorsTheme.primaryCoast,
  ));
  static const fontH6 = TextStyle(
    fontSize: 14,
    color: ColorsTheme.textColor,
    fontWeight: FontWeight.w700,
    fontFamily: 'Nunito-sans',
  );
  static const fontSub1 = TextStyle(
    fontSize: 16,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0,
    color: ColorsTheme.textColor,
  );
  static final fontSub1primaryCoast = fontSub1.merge(const TextStyle(
    color: ColorsTheme.primaryCoast,
  ));
  static final fontSub1accentForest = fontSub1.merge(const TextStyle(
    color: ColorsTheme.accentForest,
  ));
  static final fontSub1DisableGray2 = fontSub1.merge(const TextStyle(
    color: ColorsShadesTheme.disabledGray2,
  ));
  static const fontSubH2 = TextStyle(
    fontSize: 14,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w700,
    height: 20 / 14,
    letterSpacing: 0.01,
    color: ColorsTheme.textColor,
  );
  static final fontSubH2primaryCoast = fontSubH2.merge(
    const TextStyle(color: ColorsTheme.primaryCoast),
  );
  static final fontSubH2accentForest = fontSubH2.merge(
    const TextStyle(color: ColorsTheme.accentForest),
  );
  static final fontSubH2White = fontSubH2.merge(
    const TextStyle(color: ColorsTheme.textColor),
  );
  static const fontBody1 = TextStyle(
    fontSize: 16,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: ColorsTheme.textColor,
  );
  static const fontBody1CalendarWhite = TextStyle(
    fontSize: 16,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0.002,
    color: ColorsTheme.textColor,
  );

  static final fontBody1accentForest = fontBtn.merge(const TextStyle(
    color: ColorsTheme.accentForest,
  ));

  static final fontBody1Placeholder = fontBtn
      .merge(const TextStyle(color: ColorsShadesTheme.placeholderText))
      .copyWith(fontSize: 16);

  static final fontBody1PlaceholderWhite = fontBtn.merge(const TextStyle(
    color: ColorsTheme.textColor,
  ));
  static const fontBody2 = TextStyle(
    fontSize: 14,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    letterSpacing: 0.002,
    color: ColorsTheme.textColor,
  );
  static const fontBody3 = TextStyle(
    fontSize: 12,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w400,
    height: 16 / 12,
    letterSpacing: 0.008,
    color: ColorsTheme.textColor,
  );
  static const fontBody3White = TextStyle(
    fontSize: 12,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w400,
    height: 16 / 12,
    letterSpacing: 0.08,
    color: ColorsTheme.textColor,
  );
  static final fontBody3accentForest = fontBody3.merge(const TextStyle(
    color: ColorsTheme.accentForest,
  ));
  static final fontBody3primaryCoast = fontBody3.merge(const TextStyle(
    color: ColorsTheme.primaryCoast,
  ));
  static final fontBody3DisableGray2 = fontBody3.merge(const TextStyle(
    color: ColorsShadesTheme.disabledGray2,
  ));
  // H4
  static const fontBtn = TextStyle(
    fontSize: 18,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w700,
    height: 24 / 18,
    letterSpacing: 0.01,
    color: ColorsTheme.textColor,
  );
  static final fontBtnprimaryCoast = fontBtn.merge(const TextStyle(
    color: ColorsTheme.white,
  ));
  static final fontBtnWhite = fontBtn.merge(const TextStyle(
    color: ColorsTheme.white,
  ));
  static final fontBtnDisabled = fontBtn.merge(const TextStyle(
    color: ColorsShadesTheme.disabledGray2,
  ));
  static const fontCap = TextStyle(
    fontSize: 12,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w700,
    height: 16 / 12,
    letterSpacing: 0.008,
    color: ColorsTheme.textColor,
  );

  static final fontCapprimaryCoast = fontCap.merge(const TextStyle(
    color: ColorsTheme.primaryCoast,
  ));
  static final fontCapaccentForest = fontCap.merge(const TextStyle(
    color: ColorsTheme.accentForest,
  ));
  static final fontCapWhite = fontCap.merge(const TextStyle(
    color: ColorsTheme.textColor,
  ));
  static final fontCapDisableGray2 = fontCap.merge(const TextStyle(
    color: ColorsShadesTheme.disabledGray2,
  ));
  static const fontOver = TextStyle(
    fontSize: 12,
    fontFamily: 'Nunito-Sans',
    fontWeight: FontWeight.w400,
    height: 16 / 12,
    letterSpacing: 0.015,
    color: ColorsTheme.textColor,
  );
  static const fontToast = TextStyle(
    fontSize: 14,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    height: 24 / 14,
    letterSpacing: 0.002,
    color: ColorsShadesTheme.neutralGray1,
  );
}
