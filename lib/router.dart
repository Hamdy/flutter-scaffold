// import 'package:app/coach/home/screens/coach_home.dart';
// import 'package:app/trainee/chat/screens/chat.dart';
// import 'package:app/trainee/home/screens/coach_filter.dart';
// import 'package:app/core/screens/intro_screen.dart';
// import 'package:app/core/screens/login_screen.dart';

// import 'package:app/core/screens/signup_screen.dart';
// import 'package:app/trainee/home/screens/coach_profile.dart';
// import 'package:app/trainee/home/screens/trainee_home.dart';
// import 'package:app/coach/profile/screens/coach_banking.dart';
// import 'package:app/coach/profile/screens/coach_experience.dart';
// import 'package:app/coach/profile/screens/coach_holidays.dart';
// import 'package:app/coach/profile/screens/coach_info.dart';
// import 'package:app/trainee/profile/screens/coach_gender_screen.dart';
// import 'package:app/trainee/profile/screens/set_profile_type_screen.dart';
// import 'package:app/trainee/profile/screens/trainee_fitness_goal_screen.dart';
// import 'package:app/trainee/profile/screens/trainee_fitness_level_screen.dart';
// import 'package:app/trainee/profile/screens/trainee_fitness_tools.dart';
// import 'package:app/trainee/profile/screens/trainee_nutrition_allergy_screen.dart';
// import 'package:app/trainee/profile/screens/trainee_nutrition_foods_screen.dart';
// import 'package:app/trainee/profile/screens/trainee_nutrition_goal_screen.dart';
// import 'package:app/trainee/profile/screens/trainee_nutrition_no_meals_screen.dart';
// import 'package:app/trainee/profile/screens/trainee_personal_info_screen.dart';
// import 'package:app/trainee/profile/screens/trainee_training_location.dart';
// import 'package:app/trainee/profile/screens/training_plan_screen.dart';
// import 'package:app/trainee/program/screesn/trainee_meal_details.dart';
// import 'package:app/trainee/program/screesn/trainee_program.dart';
// import 'package:app/trainee/program/screesn/trainee_video_player.dart';
// import 'package:app/trainee/settings/screens/moyasar_3d_secure.dart';
// import 'package:app/trainee/settings/screens/trainee_add_payment_method.dart';
// import 'package:app/trainee/settings/screens/trainee_fitness_status_screen.dart';
// import 'package:app/core/screens/language_screen.dart';
// import 'package:app/trainee/settings/screens/trainee_notifications_screen.dart';
// import 'package:app/core/screens/policy_screen.dart';
// import 'package:app/trainee/settings/screens/trainee_payment_methods.dart';
// import 'package:app/trainee/settings/screens/trainee_settings_screen.dart';
// import 'package:app/trainee/settings/screens/subsrciptions_screen.dart';
// import 'package:app/core/screens/support_screen.dart';
// import 'package:app/trainee/profile/screens/trainee_profile_settings_screen.dart';
// import 'package:app/trainee/subscription/screens/subscription_date.dart';
// import 'package:app/trainee/subscription/screens/subscription_package.dart';
// import 'package:app/trainee/subscription/screens/subscription_payment.dart';
// import 'package:app/trainee/subscription/screens/subscription_plan.dart';

import 'package:flutter/material.dart';

class AppRouter {
  // Static fields for route paths
  static const String signup = "/account/signup";
  static const String login = "/account/login";
  static const String setUserType = "/profile/set";
  static const String trainingPlan = "/profile/trainee/plan";
  static const String coachGender = "/profile/trainee/gender";
  static const String traineePersonalInfo = "/profile/trainee/personalInfo";
  static const String traineeFitnessGoal = "/profile/trainee/fitnessGoal";
  static const String traineeFitnessTools = "/profile/trainee/fitnessTools";
  static const String traineeFitnesslevel = "/profile/trainee/fitnesslevel";
  static const String traineeTrainingLocation =
      "/profile/trainee/trainingLocation";
  static const String traineeNutritionGoal = "/profile/trainee/nutritionGoal";
  static const String traineeNutritionFoods = "/profile/trainee/nutritionFoods";
  static const String traineeNutritionAllergy =
      "/profile/trainee/nutritionAllergy";
  static const String traineeNutritionNumberOfMeals =
      "/profile/trainee/nutritionNumberOfFoods";

  static const String traineeHome = "/home/trainee";

  static const String coachFilter = "/home/trainee/filter";

  static const String coachHome = "/home/coach";
  static const String coachExperience = "/profile/coach/experience";
  static const String coachPersonalInfo = "/profile/coach/personal";
  static const String coachBanking = "/profile/coach/banking";
  static const String coachHolidays = "/profile/coach/holidays";

  static const String traineeSettings = "/settings/trainee/";
  static const String traineeSubscriptions = "/settings/trainee/subscriptions";
  static const String traineeFitnessStatus = "/settings/trainee/fitnessStatus";
  static const String traineeNotifications = "/settings/trainee/notifications";
  static const String traineeProfile = "/settings/trainee/profile";
  static const String traineePaymentMethods = "/settings/trainee/payment/cards";
  static const String traineeAddPaymentMethod = "/settings/trainee/payment/add";
  static const String moyasarWebView = "/settings/trainee/payment/webview";

  static const String subscriptionPlan = "/subscription/plan";

  static const String coachProfileView = "/profile/trainee/coachProfileView";

  static const String subscriptionDate = "/subscription/date";
  static const String subscriptionPackage = "/subscription/package";
  static const String subscriptionPayment = "/subscription/payment";

  static const String language = "/language";
  static const String support = "/support";
  static const String ploicy = "/policy";

  static const String traineeChat = "/chat/trainee";
  static const String traineeProgram = "/program/trainee";
  static const String traineeMeal = "/program/trainee/meal";
  static const String traineeExerciseVideo = "/program/trainee/video";

  static MaterialPageRoute generateRoute(RouteSettings settings, String? home) {
    Widget widget = Container(); // Default to IntroScreen if no match is found

    // String? route = settings.name ?? "/";

    // if (route == "/") {
    //   route = home;
    // }

    // switch (route) {
    //   case "/":
    //     break;
    //   case AppRouter.signup:
    //     widget = const SignupScreen();
    //     break;
    //   case AppRouter.login:
    //     widget = const LoginScreen();
    //     break;
    //   case AppRouter.setUserType:
    //     widget = const SetProfileTypeScreen();
    //     break;
    //   case AppRouter.trainingPlan:
    //     widget = const TrainingPlanScreen();
    //     break;
    //   case AppRouter.coachGender:
    //     widget = const CoachGenderSelectorScreen();
    //     break;
    //   case AppRouter.traineePersonalInfo:
    //     widget = const TraineePersonalInfoScreen();
    //     break;
    //   case AppRouter.traineeFitnessGoal:
    //     widget = const TraineeFitnessGoalScreen();
    //   case AppRouter.traineeFitnessTools:
    //     widget = const TraineeFitnessTools();
    //   case AppRouter.traineeFitnesslevel:
    //     widget = const TraineeFitnessLevelScreen();
    //   case AppRouter.traineeTrainingLocation:
    //     widget = const TraineeTrainingLocationScreen();
    //   case AppRouter.traineeNutritionAllergy:
    //     widget = const TraineeNutritionAllergyScreen();
    //   case AppRouter.traineeNutritionNumberOfMeals:
    //     widget = const TraineeNutritionNUmberOfMealsScreen();

    //   case AppRouter.subscriptionPlan:
    //     widget = const SubscriptionPlanScreen();
    //   case AppRouter.subscriptionDate:
    //     widget = const SubscriptionStartDateScreen();
    //   case AppRouter.subscriptionPackage:
    //     widget = const SubscriptionPackageScreen();
    //   case AppRouter.subscriptionPayment:
    //     widget = const SubscriptionPaymentScreen();

    //   case AppRouter.traineeHome:
    //     widget = const TraineeHomeScreen();
    //     break;
    //   case AppRouter.coachExperience:
    //     widget = const CoachExperienceScreen();
    //     break;
    //   case AppRouter.coachPersonalInfo:
    //     widget = const CoachInfoScreen();
    //   case AppRouter.coachBanking:
    //     widget = const CoachBankingScreen();
    //   case AppRouter.coachHolidays:
    //     widget = const CoachHolidaysScreen();
    //   case AppRouter.coachHome:
    //     widget = const CoachHomeScreen();
    //   case AppRouter.traineeNutritionGoal:
    //     widget = const TraineeNutritionGoalScreen();
    //   case AppRouter.traineeNutritionFoods:
    //     widget = const TraineeNutritionFavoriteFoodsScreen();
    //   case AppRouter.traineeSettings:
    //     widget = const TraineeSettingsScreen();
    //   case AppRouter.traineeFitnessStatus:
    //     widget = const TraineeFitnessStatusScreen();
    //   case AppRouter.traineePaymentMethods:
    //     widget = const PaymentMethodsScreen();
    //   case AppRouter.traineeAddPaymentMethod:
    //     widget = const TraineeAddPaymentMethodScreen();
    //   case AppRouter.moyasarWebView:
    //     widget = ThreeDSWebViewScreen();
    //   case AppRouter.traineeSubscriptions:
    //     widget = const TraineeSubscriptionsScreen();
    //   case AppRouter.language:
    //     widget = const LanguageScreen();
    //   case AppRouter.support:
    //     widget = const SupportScreen();
    //   case AppRouter.ploicy:
    //     widget = const PolicyScreen();
    //   case AppRouter.traineeNotifications:
    //     widget = const TraineeNotificationsScreen();
    //   case AppRouter.traineeProfile:
    //     widget = const TraineeProfileSettingsScreen();

    //   case AppRouter.coachProfileView:
    //     widget = const CoachProfileViewScreen();
    //   case AppRouter.coachFilter:
    //     widget = const CoachFilterScreen();

    //   case AppRouter.traineeChat:
    //     widget = const TraineeChatScreen();
    //   case AppRouter.traineeProgram:
    //     widget = const TraineeProgramScrren();
    //   case AppRouter.traineeMeal:
    //     widget = const TraineeMealDetailsScreen();
    //   case AppRouter.traineeExerciseVideo:
    //     widget = const TraineeVideoPlayerScreen();
    // }

    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
