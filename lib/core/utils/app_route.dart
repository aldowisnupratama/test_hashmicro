import 'package:flutter/material.dart';

import '../../features/attendance/presentation/pages/admin_page.dart';
import '../../features/attendance/presentation/pages/attendance_page.dart';
import '../../features/attendance/presentation/pages/login_page.dart';
import '../../features/attendance/presentation/pages/splash_page.dart';
import 'app_page_name.dart';

class AppRoute {
  AppRoute();
  Route? generateRoute(RouteSettings pageRoute) {
    switch (pageRoute.name) {
      case AppPageName.splasPage:
        return MaterialPageRoute(builder: (_) => const SplashPage());

      case AppPageName.attendancePage:
        return MaterialPageRoute(builder: (_) => const AttendancePage());
      case AppPageName.adminPage:
        return MaterialPageRoute(builder: (_) => const AdminPage());
      case AppPageName.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      default:
        return null;
    }
  }
}
