import 'package:flutter/material.dart';

double designHeight = 844;
double designWidth = 390;

double horizontal(BuildContext context, double space) {
  return (MediaQuery.of(context).size.width / designWidth) * space;
}

double vertical(BuildContext context, double space) {
  return (MediaQuery.of(context).size.height / designHeight) * space;
}

SizedBox addVerticalSpace(BuildContext context, double space) {
  return SizedBox(height: vertical(context, space));
}

SizedBox addHorizontalSpace(BuildContext context, double space) {
  return SizedBox(width: horizontal(context, space));
}

TextTheme markdownTheme = const TextTheme(
  bodyLarge: TextStyle(fontFamily: "Janna"),
  bodyMedium: TextStyle(fontFamily: "Janna"),
  bodySmall: TextStyle(fontFamily: "Janna"),
  displayLarge: TextStyle(fontFamily: "Janna"),
  displayMedium: TextStyle(fontFamily: "Janna"),
  displaySmall: TextStyle(fontFamily: "Janna"),
  headlineLarge: TextStyle(fontFamily: "Janna"),
  headlineMedium: TextStyle(fontFamily: "Janna"),
  headlineSmall: TextStyle(fontFamily: "Janna"),
  labelLarge: TextStyle(fontFamily: "Janna"),
  labelMedium: TextStyle(fontFamily: "Janna"),
  labelSmall: TextStyle(fontFamily: "Janna"),
  titleLarge: TextStyle(fontFamily: "Janna"),
  titleMedium: TextStyle(fontFamily: "Janna"),
  titleSmall: TextStyle(fontFamily: "Janna"),
);

@immutable
class ElevateButtonStyles extends ThemeExtension<ElevateButtonStyles> {
  const ElevateButtonStyles({required this.buttonStyle3DFF_016});

  final ButtonStyle? buttonStyle3DFF_016;

  @override
  ThemeExtension<ElevateButtonStyles> copyWith(
      {ButtonStyle? buttonStyle3DFF_016}) {
    return ElevateButtonStyles(
      buttonStyle3DFF_016: buttonStyle3DFF_016 ?? buttonStyle3DFF_016,
    );
  }

  @override
  ThemeExtension<ElevateButtonStyles> lerp(
      ElevateButtonStyles? other, double t) {
    return ElevateButtonStyles(
      buttonStyle3DFF_016:
          ButtonStyle.lerp(buttonStyle3DFF_016, other!.buttonStyle3DFF_016, t),
    );
  }
}

// Extra colors
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.dimmedButtonColor,
    required this.colorF5FF04,
    required this.strokeColor,
    required this.colorFF2F,
    required this.colorFF1F,
    required this.arrowCircleColor,
    required this.color0AFF04,
    required this.color0DFF16,
    required this.colorBlckWhite,
    required this.colorWhiteBlack,
    required this.inactiveSliderColor,
    required this.foodSelectedBackground,
    required this.foodNotSelectedBackground,
    required this.foodSelectedBorderColor,
    required this.avatarBorderColor,
    required this.barColor,
    required this.calendarItemColor,
    required this.programSelectorBackgroundColor,
    required this.programSelectorFrameColor,
    required this.colorD92F,
    required this.cardBackgroundColor,
    required this.nonSelectedButton,
    required this.smallContinueButtonBackground,
    required this.shareButtonBackgroundColor,
    required this.ratingBarEmpty,
    required this.radioButtonBorderColor,
    required this.radioButtonCheckedColor,
    required this.calendarButtonColor,
    required this.planBackgroundColor,
    required this.planForegroundColor,
    required this.colorE1E1,
  });

  final Color? orange = const Color(0xFFFFA40A);
  final Color? blue = const Color(0xFF1787E7);
  final Color? pinky = const Color(0xFFFE7762);
  final Color? dimmedButtonColor;
  final Color? colorF5FF04;
  final Color? strokeColor;
  final Color? colorFF2F;
  final Color? colorFF1F;
  final Color? arrowCircleColor;
  final Color? color0AFF04;
  final Color? color0DFF16;
  final Color? colorBlckWhite;
  final Color? inactiveSliderColor;
  final Color? foodSelectedBackground;
  final Color? foodNotSelectedBackground;
  final Color? foodSelectedBorderColor;
  final Color? avatarBorderColor;
  final Color? barColor;
  final Color? calendarItemColor;
  final Color? programSelectorBackgroundColor;
  final Color? programSelectorFrameColor;
  final Color? colorD92F;
  final Color? cardBackgroundColor;
  final Color? nonSelectedButton;
  final Color? smallContinueButtonBackground;
  final Color? shareButtonBackgroundColor;
  final Color? ratingBarEmpty;
  final Color? radioButtonBorderColor;
  final Color? radioButtonCheckedColor;
  final Color? calendarButtonColor;
  final Color? planBackgroundColor;
  final Color? planForegroundColor;
  final Color? colorE1E1;
  final Color? colorWhiteBlack;

  @override
  ThemeExtension<AppColors> copyWith() {
    return AppColors(
        dimmedButtonColor: dimmedButtonColor,
        colorF5FF04: colorF5FF04,
        strokeColor: strokeColor,
        colorFF2F: colorFF2F,
        colorFF1F: colorFF1F,
        arrowCircleColor: arrowCircleColor,
        color0AFF04: color0AFF04,
        color0DFF16: color0DFF16,
        colorBlckWhite: colorBlckWhite,
        colorWhiteBlack: colorWhiteBlack,
        inactiveSliderColor: inactiveSliderColor,
        foodSelectedBackground: foodSelectedBackground,
        foodNotSelectedBackground: foodNotSelectedBackground,
        foodSelectedBorderColor: foodSelectedBorderColor,
        avatarBorderColor: avatarBorderColor,
        barColor: barColor,
        calendarItemColor: calendarItemColor,
        programSelectorBackgroundColor: programSelectorBackgroundColor,
        programSelectorFrameColor: programSelectorFrameColor,
        colorD92F: colorD92F,
        cardBackgroundColor: cardBackgroundColor,
        nonSelectedButton: nonSelectedButton,
        smallContinueButtonBackground: smallContinueButtonBackground,
        shareButtonBackgroundColor: shareButtonBackgroundColor,
        ratingBarEmpty: ratingBarEmpty,
        radioButtonBorderColor: radioButtonBorderColor,
        radioButtonCheckedColor: radioButtonCheckedColor,
        calendarButtonColor: calendarButtonColor,
        planBackgroundColor: planBackgroundColor,
        planForegroundColor: planForegroundColor,
        colorE1E1: colorE1E1);
  }

  @override
  ThemeExtension<AppColors> lerp(
      covariant ThemeExtension<AppColors>? other, double t) {
    return AppColors(
        dimmedButtonColor: dimmedButtonColor,
        colorF5FF04: colorF5FF04,
        strokeColor: strokeColor,
        colorFF2F: colorFF2F,
        colorFF1F: colorFF1F,
        arrowCircleColor: arrowCircleColor,
        color0AFF04: color0AFF04,
        color0DFF16: color0DFF16,
        colorBlckWhite: colorBlckWhite,
        colorWhiteBlack: colorWhiteBlack,
        inactiveSliderColor: inactiveSliderColor,
        foodSelectedBackground: foodSelectedBackground,
        foodNotSelectedBackground: foodNotSelectedBackground,
        foodSelectedBorderColor: foodSelectedBorderColor,
        avatarBorderColor: avatarBorderColor,
        barColor: barColor,
        calendarItemColor: calendarItemColor,
        programSelectorBackgroundColor: programSelectorBackgroundColor,
        programSelectorFrameColor: programSelectorFrameColor,
        colorD92F: colorD92F,
        cardBackgroundColor: cardBackgroundColor,
        nonSelectedButton: nonSelectedButton,
        smallContinueButtonBackground: smallContinueButtonBackground,
        shareButtonBackgroundColor: shareButtonBackgroundColor,
        ratingBarEmpty: ratingBarEmpty,
        radioButtonBorderColor: radioButtonBorderColor,
        radioButtonCheckedColor: radioButtonCheckedColor,
        calendarButtonColor: calendarButtonColor,
        planBackgroundColor: planBackgroundColor,
        planForegroundColor: planForegroundColor,
        colorE1E1: colorE1E1);
  }
}

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.font700S16C0DFF,
    required this.font400S16C6486,
    required this.font400S20C0DFF,
    required this.font400S20C6486,
    required this.font400S16C0D86,
    required this.font400S16C0DFF,
    required this.font400S14C0DFF,
    required this.font700S20C0DFF,
    required this.font400S14C64FF,
    required this.font700S14C0DFF,
    required this.font700S12C0DFF,
    required this.font700S12C64FF,
    required this.font400S14C6486,
    required this.font400S12CAFAF,
    required this.font400S12C6486,
    required this.font700S14CFFFF,
    required this.font700S20C6486,
    required this.font700S20CFFFF,
    required this.font700S16C6486,
    required this.font700S24CFFFF,
    required this.font700S24C0DFF,
    required this.font700S16CFFFF,
    required this.font700S14C86FF,
    required this.font700S14C6486,
    required this.font700S12CFFFF,
    required this.font400S14CD9FF,
    required this.font400S12C64FF,
    required this.font400S12CFFFF,
    required this.font400S14CFFFF,
    required this.font400S12C0DFF,
    required this.font400S14C0000,
  });

  final TextStyle? font700S16C0DFF;
  final TextStyle? font400S16C6486;
  final TextStyle? font400S20C6486;
  final TextStyle? font400S20C0DFF;
  final TextStyle? font400S16C0D86;
  final TextStyle? font400S16C0DFF;
  final TextStyle? font400S14C0DFF;
  final TextStyle? font700S20C0DFF;
  final TextStyle? font400S14C64FF;
  final TextStyle? font700S14C0DFF;
  final TextStyle? font700S12C0DFF;
  final TextStyle? font700S12C64FF;
  final TextStyle? font400S14C6486;
  final TextStyle? font400S12CAFAF;
  final TextStyle? font400S12C6486;
  final TextStyle? font700S14CFFFF;
  final TextStyle? font700S20C6486;
  final TextStyle? font700S20CFFFF;
  final TextStyle? font700S16C6486;

  final TextStyle? font700S24CFFFF;
  final TextStyle? font700S24C0DFF;
  final TextStyle? font700S16CFFFF;
  final TextStyle? font700S14C86FF;
  final TextStyle? font700S14C6486;
  final TextStyle? font700S12CFFFF;
  final TextStyle? font400S14CD9FF;
  final TextStyle? font400S12C64FF;
  final TextStyle? font400S12CFFFF;
  final TextStyle? font400S14CFFFF;
  final TextStyle? font400S12C0DFF;
  final TextStyle? font400S14C0000;

  @override
  ThemeExtension<AppTextStyles> copyWith() {
    return AppTextStyles(
        font700S16C0DFF: font700S16C0DFF,
        font400S16C6486: font400S16C6486,
        font400S20C0DFF: font400S20C0DFF,
        font400S20C6486: font400S20C6486,
        font400S16C0D86: font400S16C0D86,
        font400S16C0DFF: font400S16C0DFF,
        font400S14C0DFF: font400S14C0DFF,
        font700S20C0DFF: font700S20C0DFF,
        font400S14C64FF: font400S14C64FF,
        font700S14C0DFF: font700S14C0DFF,
        font700S12C0DFF: font700S12C0DFF,
        font700S12C64FF: font700S12C64FF,
        font400S14C6486: font400S14C6486,
        font400S12CAFAF: font400S12CAFAF,
        font400S12C6486: font400S12C6486,
        font700S14CFFFF: font700S14CFFFF,
        font700S20C6486: font700S20C6486,
        font700S20CFFFF: font700S20CFFFF,
        font700S16C6486: font700S16C6486,
        font700S24CFFFF: font700S24CFFFF,
        font700S24C0DFF: font700S24C0DFF,
        font700S16CFFFF: font700S16CFFFF,
        font700S14C86FF: font700S14C86FF,
        font700S14C6486: font700S14C6486,
        font700S12CFFFF: font700S12CFFFF,
        font400S14CD9FF: font400S14CD9FF,
        font400S12C64FF: font400S12C64FF,
        font400S12CFFFF: font400S12CFFFF,
        font400S14CFFFF: font400S14CFFFF,
        font400S12C0DFF: font400S12C0DFF,
        font400S14C0000: font400S14C0000);
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
      covariant ThemeExtension<AppTextStyles>? other, double t) {
    return AppTextStyles(
        font700S16C0DFF: font700S16C0DFF,
        font400S16C6486: font400S16C6486,
        font400S20C0DFF: font400S20C0DFF,
        font400S20C6486: font400S20C6486,
        font400S16C0D86: font400S16C0D86,
        font400S16C0DFF: font400S16C0DFF,
        font400S14C0DFF: font400S14C0DFF,
        font700S20C0DFF: font700S20C0DFF,
        font400S14C64FF: font400S14C64FF,
        font700S14C0DFF: font700S14C0DFF,
        font700S12C0DFF: font700S12C0DFF,
        font700S12C64FF: font700S12C64FF,
        font400S14C6486: font400S14C6486,
        font400S12CAFAF: font400S12CAFAF,
        font400S12C6486: font400S12C6486,
        font700S14CFFFF: font700S14CFFFF,
        font700S20C6486: font700S20C6486,
        font700S20CFFFF: font700S20CFFFF,
        font700S16C6486: font700S16C6486,
        font700S24CFFFF: font700S24CFFFF,
        font700S24C0DFF: font700S24C0DFF,
        font700S16CFFFF: font700S16CFFFF,
        font700S14C86FF: font700S14C86FF,
        font700S14C6486: font700S14C6486,
        font700S12CFFFF: font700S12CFFFF,
        font400S14CD9FF: font400S14CD9FF,
        font400S12C64FF: font400S12C64FF,
        font400S12CFFFF: font400S12CFFFF,
        font400S14CFFFF: font400S14CFFFF,
        font400S12C0DFF: font400S12C0DFF,
        font400S14C0000: font400S14C0000);
  }
}

class AppTheme {
  final BuildContext context;

  AppTheme({
    required this.context,
  });

  ThemeData get lightTheme {
    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: const Color(0XFFF3F3F3),
        scaffoldBackgroundColor: const Color(0XFFF1F1F1),
        textTheme: markdownTheme,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          // disable underline on the field when focused
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(
            color: Color(0xFF545964),
            fontFamily: "Janna",
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          iconColor: Color(0xFF545964),
          suffixIconColor: Color(0xFF545964),
          errorStyle: TextStyle(
            color: Color(0xFFB82025), // Example error color
            fontSize: 14.0,
            fontFamily: 'Janna',
            fontWeight: FontWeight.w400,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          // Define background color when the button is not pressed
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              return const Color(0xFFB82025);
            },
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          // Define button padding
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(
                horizontal: horizontal(context, 16),
                vertical: vertical(context, 8)),
          ),
          fixedSize: WidgetStateProperty.all<Size>(
            Size(horizontal(context, 343), vertical(context, 56)),
          ),
        )),
        iconTheme: const IconThemeData(color: Color(0xff545964)),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFF25282B),
          surface: Color(0xffF3F3F3),
        )).copyWith(
      extensions: <ThemeExtension<dynamic>>[
        AppColors(
            dimmedButtonColor: const Color(0xFF35383D),
            colorF5FF04: const Color(0xFFF5F5F5),
            strokeColor: const Color(0XFFF5F5F5),
            colorFF2F: const Color(0xFFFFFFFF),
            colorFF1F: const Color(0xFFFFFFFF),
            arrowCircleColor: const Color(0xFF0D0D0D).withOpacity(0.1),
            color0AFF04: const Color(0X0D0D0D0A).withOpacity(0.04),
            color0DFF16: const Color(0xFF0D0D0D).withOpacity(0.16),
            colorBlckWhite: Colors.black,
            colorWhiteBlack: Colors.white,
            inactiveSliderColor: const Color(0XFFDFE2E8),
            foodSelectedBackground: Colors.white,
            foodNotSelectedBackground: const Color(0XFFF1F1F1),
            foodSelectedBorderColor: const Color(0XFFB82025),
            avatarBorderColor: const Color(0XFFFFB411),
            barColor: const Color(0XFFF1F1F1),
            calendarItemColor: const Color(0xFFB82025),
            programSelectorBackgroundColor: const Color(0XFFEAEAEA),
            programSelectorFrameColor: Colors.white,
            colorD92F: const Color(
              0xFFD0D3D9,
            ),
            cardBackgroundColor: const Color(0xFFF5F5F5),
            nonSelectedButton: const Color(0XFFD0D6E1),
            colorE1E1: const Color(0XFFD0D6E1),
            smallContinueButtonBackground: const Color(0XFF1E2529),
            shareButtonBackgroundColor: Colors.white.withOpacity(0.12),
            ratingBarEmpty: const Color(0XFFF7F2E3),
            radioButtonBorderColor: const Color(0XFF1F2228),
            radioButtonCheckedColor: const Color(0XFF545964),
            calendarButtonColor: const Color(0XFF545964),
            planBackgroundColor: Colors.white.withOpacity(0.08),
            planForegroundColor: const Color(0XFFF6CE42)),
        const AppTextStyles(
          font700S24C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFF0D0D0D)),
          font700S16C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0XFF0D0D0D)),
          font400S16C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0XFF0D0D0D)),
          font400S16C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0XFF545964)),
          font400S16C0D86: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0XFF0D0D0D)),
          font400S20C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0XFF0D0D0D)),
          font400S20C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0XFF545964)),
          font700S20C0DFF: TextStyle(
            fontFamily: "Janna",
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0XFF0D0D0D),
          ),
          font400S14C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0XFF0D0D0D)),
          font400S14C64FF: TextStyle(
            fontFamily: "Janna",
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0XFF545964),
          ),
          font700S14C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Color(0XFF0D0D0D)),
          font400S14C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0XFF545964)),
          font700S12C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0XFF0D0D0D)),
          font700S12C64FF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0XFF545964)),
          font400S12CAFAF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFF9CA3AF)),
          font400S12C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0XFF545964)),
          font700S14CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Color(0XFFFFFFFF)),
          font700S20C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0xFF545964)),
          font700S20CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0XFFFFFFFF)),
          font700S16C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xFF545964)),

          font700S24CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFFFFFFFF)),

          font400S14CD9FF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFFD9D9D9)),

          font400S12C64FF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFF545964)),

          // buttons
          font700S16CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xFFFFFFFF)),

          // buttons
          font700S14C86FF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Color(0xff787F86)),
          font700S12CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFFFFFFFF)),

          font700S14C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Color(0XFF545964)),

          font400S12CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFFFFFFFF)),

          font400S14CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFFFFFFFF)),

          font400S12C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0XFF0D0D0D)),

          font400S14C0000: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0XFFF6A800)),
        ),
        ElevateButtonStyles(
          buttonStyle3DFF_016: ButtonStyle(
            // Define background color when the button is not pressed
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                return const Color(0xFF35383D);
              },
            ),
          ),
        )
      ],
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFB82025),
        primaryColorLight: const Color(0xFF52575C),
        scaffoldBackgroundColor: const Color(0xFF030916),
        textTheme: markdownTheme,
        inputDecorationTheme: const InputDecorationTheme(
          // disable underline on the field
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          // disable underline on the field when focused
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(
            color: Color(0xff787F86),
            fontFamily: "Janna",
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          iconColor: Color(0xFF787F86),
          suffixIconColor: Color(0xFF787F86),
          errorStyle: TextStyle(
            color: Color(0xFFB82025), // Example error color
            fontSize: 14.0,
            fontFamily: 'Janna',
            fontWeight: FontWeight.w400,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          // Define background color when the button is not pressed
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              return const Color(0xFFB82025);
            },
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          // Define button padding
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(
                horizontal: horizontal(context, 16),
                vertical: vertical(context, 8)),
          ),
          fixedSize: WidgetStateProperty.all<Size>(
            Size(horizontal(context, 343), vertical(context, 56)),
          ),
        )),
        iconTheme: const IconThemeData(color: Color(0xffBDBDBD)),
        colorScheme: const ColorScheme.dark(
          secondary: Color(0xFF25282B),
          surface: Color(0xff030916),
        )).copyWith(
      extensions: <ThemeExtension<dynamic>>[
        AppColors(
            dimmedButtonColor: const Color(0xFFFFFFFF).withOpacity(0.16),
            color0DFF16: const Color(0XFFFFFFFF).withOpacity(0.16),
            colorF5FF04: const Color(0xFFFFFFFF).withOpacity(0.04),
            calendarItemColor: const Color(0xFFFFFFFF).withOpacity(0.04),
            color0AFF04: const Color(0XFFFFFFFF).withOpacity(0.04),
            foodNotSelectedBackground: Colors.white.withOpacity(0.04),
            foodSelectedBorderColor: Colors.white.withOpacity(0.16),
            programSelectorFrameColor:
                const Color(0xFFFFFFFF).withOpacity(0.04),
            arrowCircleColor: const Color(0XFFFFFFFF).withOpacity(0.1),
            strokeColor: const Color(0XFF1E242F),
            colorFF2F: const Color(0XFF1E242F),
            colorD92F: const Color(0XFF26292F),
            colorFF1F: const Color(0XFF0D131F),
            foodSelectedBackground: const Color(0XFF0D131F),
            colorBlckWhite: Colors.white,
            colorWhiteBlack: const Color(0xFF030916),
            inactiveSliderColor: const Color(0XFF171A20),
            avatarBorderColor: const Color(0XFFF6A800),
            barColor: const Color(0xFF030916),
            programSelectorBackgroundColor: const Color(0xFF030916),
            cardBackgroundColor: Colors.white,
            nonSelectedButton: Colors.transparent,
            colorE1E1: const Color(0XFFD0D6E1),
            smallContinueButtonBackground:
                const Color(0xFFFFFFFF).withOpacity(0.16),
            shareButtonBackgroundColor:
                const Color(0xFF0F1218).withOpacity(0.12),
            ratingBarEmpty: const Color(0XFF1E242F),
            radioButtonBorderColor: const Color(0XFFE5E7EB),
            radioButtonCheckedColor: const Color(0XFF787F86),
            calendarButtonColor: const Color(0XFF787F86),
            planBackgroundColor: Colors.white.withOpacity(0.08),
            planForegroundColor: const Color(0XFFF6CE42)),
        const AppTextStyles(
          font700S16C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xFFFFFFFF)),
          font400S16C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0XFF787F86)),
          font400S20C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0XFFFFFFFF)),
          font400S20C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0XFF787F86)),
          font400S16C0D86: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0XFF787F86)),
          font400S16C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0XFFFFFFFF)),
          font400S14C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.white),
          font700S20C0DFF: TextStyle(
            fontFamily: "Janna",
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
          ),
          font400S14C64FF: TextStyle(
            fontFamily: "Janna",
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0XFFFFFFFF),
          ),
          font700S14C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Color(0XFFFFFFFF)),
          font700S12C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0XFFFFFFFF)),
          font700S12C64FF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0XFFFFFFFF)),
          font400S14C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0XFF787F86)),
          font400S12CAFAF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFF9CA3AF)),
          font400S12C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0XFF787F86)),
          font700S14CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Color(0XFFFFFFFF)),
          font700S20C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0XFF787F86)),
          font700S20CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0XFFFFFFFF)),
          font700S16C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xFF787F86)),

          font700S24CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFFFFFFFF)),
          font700S24C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0XFFFFFFFF)),

          // body
          font400S14CD9FF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFFFFFFFF)),

          // buttons
          font700S16CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xFFFFFFFF)),

          // buttons
          font700S14C86FF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Color(0XFFFFFFFF)),

          font700S14C6486: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Color(0XFF787F86)),

          font700S12CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFFFFFFFF)),

          font400S12C64FF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFFFFFFFF)),

          font400S12CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFFFFFFFF)),

          font400S14CFFFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFFFFFFFF)),

          font400S12C0DFF: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFFFFFFFF)),

          font400S14C0000: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0XFFF6A800)),
        ),
        ElevateButtonStyles(buttonStyle3DFF_016: ButtonStyle(
          // Define background color when the button is not pressed
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              return const Color(0xFFFFFFFF).withOpacity(0.16);
            },
          ),
        ))
      ],
    );
  }
}
