import 'package:application_project/pages/confirm_registration.dart';import 'package:application_project/pages/registration_pages.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirmRegistration';

  static final pages = [
    GetPage(
      name: registration,
      page: () => const RegistrationPages(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => const ConfirmRegistrationPage(),
    ),
  ];
}