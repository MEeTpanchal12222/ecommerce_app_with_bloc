import 'package:ecommerce_app/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:ecommerce_app/features/dashboard/ecommerce/screens/home/home.dart';
import 'package:ecommerce_app/personalization/screens/profile/profile_screen.dart';
import 'package:ecommerce_app/personalization/screens/profile/re_authenticate_phone_otp_screen.dart';
import 'package:ecommerce_app/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../bindings/notification_binding.dart';
import '../features/authentication/screens/phone_number/otp/phone_otp_screen.dart';
import '../features/authentication/screens/phone_number/phone_number_screen.dart';
import '../features/authentication/screens/welcome/welcome_screen.dart';
import '../features/cart/screens/cart.dart';
import '../features/checkout/screens/checkout.dart';
import '../features/dashboard/course/screens/dashboard/coursesDashboard.dart';
import '../features/favourites/favourite.dart';
import '../personalization/screens/notification/notification_detail_screen.dart';
import '../personalization/screens/notification/notification_screen.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: Routes.welcome, page: () => const WelcomeScreen()),
    GetPage(name: Routes.onboarding, page: () => const OnBoardingScreen()),
    GetPage(
      name: Routes.coursesDashboard,
      page: () => const CoursesDashboard(),
    ),
    GetPage(name: Routes.eComDashboard, page: () => const HomeScreen()),

    GetPage(name: Routes.phoneSignIn, page: () => const PhoneNumberScreen()),
    GetPage(name: Routes.otpVerification, page: () => const PhoneOtpScreen()),
    GetPage(
      name: Routes.reAuthenticateOtpVerification,
      page: () => const ReAuthenticatePhoneOtpScreen(),
    ),
    GetPage(name: Routes.profileScreen, page: () => const ProfileScreen()),
    GetPage(name: Routes.cartScreen, page: () => const CartScreen()),
    GetPage(name: Routes.checkoutScreen, page: () => const CheckoutScreen()),
    GetPage(name: Routes.favouritesScreen, page: () => const FavouriteScreen()),

    GetPage(
      name: Routes.notification,
      page: () => const NotificationScreen(),
      binding: NotificationBinding(),
      transition: Transition.fade,
    ),
    GetPage(
      name: Routes.notificationDetails,
      page: () => const NotificationDetailScreen(),
      binding: NotificationBinding(),
      transition: Transition.fade,
    ),
  ];
}
