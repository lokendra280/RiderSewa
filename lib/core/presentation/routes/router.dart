import 'package:auto_route/annotations.dart';
import 'package:ridersewa/features/auth/login_page/login_page.dart';
import 'package:ridersewa/features/services/contact_page/contact_page.dart';
import 'package:ridersewa/features/services/history_page/history_page.dart';
import 'package:ridersewa/features/services/home_page/home_page.dart';
import 'package:ridersewa/features/services/message_page/champaigns.dart';
import 'package:ridersewa/features/services/message_page/inbox_page.dart';
import 'package:ridersewa/features/services/message_page/message_page.dart';
import 'package:ridersewa/features/splash_page/splash_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: LoginPage),
  MaterialRoute(page: HomePage),
  MaterialRoute(page: HistoryPage),
  MaterialRoute(page: MessagePage),
  MaterialRoute(page: InboxPage),
  MaterialRoute(page: ChampaignsPage),
  MaterialRoute(page: ContactPage),
])
class $AppRouter {}

/*
flutter packages pub run build_runner build --delete-conflicting-outputs
*/


// class Routes {
//   const Routes._();
//
//   static const String home = '/';
// }

