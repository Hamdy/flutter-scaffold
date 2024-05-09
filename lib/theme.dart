import 'package:fitzone/utils.dart';
import 'package:flutter/material.dart';

const double designHeight = 844;
const double designWidth = 390;

// Extra colors
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({required this.dimmedButtonColor});

  final Color? orange = const Color(0xFFFFA40A);
  final Color? blue = const Color(0xFF1787E7);
  final Color? pinky = const Color(0xFFFE7762);
  final Color? dimmedButtonColor;

  @override
  AppColors copyWith({Color? dimmedButtonColor}) {
    return AppColors(dimmedButtonColor: dimmedButtonColor ?? dimmedButtonColor);
  }

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      dimmedButtonColor:
          Color.lerp(dimmedButtonColor, other.dimmedButtonColor, t),
    );
  }

  // Optional
  @override
  String toString() => 'AppColors(orange: $orange, blue: $blue, pinky: $pinky)';
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
        primaryColor: const Color(0xFF25282B),
        primaryColorLight: const Color(0xFF52575C),
        scaffoldBackgroundColor: const Color(0xFFF3F3F3),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          // Define background color when the button is not pressed
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return const Color(0xFFB82025);
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          // Define button padding
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(
                horizontal: horizontal(context, 16),
                vertical: vertical(context, 8)),
          ),
          fixedSize: MaterialStateProperty.all<Size>(
            Size(horizontal(context, 343), vertical(context, 56)),
          ),
        )),
        textTheme: const TextTheme(
          // Heading
          headlineLarge: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFFFFFFFF)),
          // body
          bodyMedium: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFFD9D9D9)),

          // buttons
          headlineSmall: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xFFFFFFFF)),

          headlineMedium: TextStyle(
            fontFamily: "Janna",
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),

          displayLarge: TextStyle(
            fontFamily: "Janna",
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),

          displayMedium: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff787F86)),

          bodySmall: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFF9CA3AF)),

          // buttons
          labelLarge: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xff787F86)),
          labelMedium: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFFFFFFFF)),
        ),
        iconTheme: const IconThemeData(color: Color(0xff545964)),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFF25282B),
          background: Color(0xffF3F3F3),
        )).copyWith(
      extensions: <ThemeExtension<dynamic>>[
        const AppColors(
          dimmedButtonColor: Color(0xFF35383D),
        ),
      ],
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF25282B),
        primaryColorLight: const Color(0xFF52575C),
        scaffoldBackgroundColor: const Color(0xFF030916),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          // Define background color when the button is not pressed
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return const Color(0xFFB82025);
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          // Define button padding
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(
                horizontal: horizontal(context, 16),
                vertical: vertical(context, 8)),
          ),
          fixedSize: MaterialStateProperty.all<Size>(
            Size(horizontal(context, 343), vertical(context, 56)),
          ),
        )),
        textTheme: const TextTheme(
          // Heading
          headlineLarge: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFFFFFFFF)),
          // body
          bodyMedium: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFFFFFFFF)),

          // buttons
          headlineSmall: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xFFFFFFFF)),

          headlineMedium: TextStyle(
            fontFamily: "Janna",
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),

          displayLarge: TextStyle(
            fontFamily: "Janna",
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),

          displayMedium: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff787F86)),

          bodySmall: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFF9CA3AF)),

          // buttons
          labelLarge: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xff787F86)),
          labelMedium: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Color(0xFFFFFFFF)),
        ),
        iconTheme: const IconThemeData(color: Color(0xffBDBDBD)),
        colorScheme: const ColorScheme.dark(
          secondary: Color(0xFF25282B),
          background: Color(0xff030916),
        )).copyWith(
      extensions: <ThemeExtension<dynamic>>[
        AppColors(
          dimmedButtonColor: const Color(0xFFFFFFFF).withOpacity(0.16),
        ),
      ],
    );
  }
}
  


/*
* AppColors colorExtension = Theme.of(context).extension<AppColors>()!;
* colorExtension.dimmedButtonColor!)
*/


