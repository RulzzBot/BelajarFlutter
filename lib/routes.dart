import 'package:application_project/pages/detail_product_pages.dart';
import 'package:application_project/pages/list_product_page.dart';
import 'package:application_project/pages/confirm_registration.dart';
import 'package:application_project/pages/registration_pages.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirmRegistration';
  static const String productPage = '/productPage';
  static const String detailProduct = '/detailProduct';

  static final pages = [
    GetPage(
      name: registration,
      page: () => const RegistrationPages(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => const ConfirmRegistrationPage(),
    ),
    GetPage(
      name: productPage,
      page: () => ListProductPage(),
    ),
    GetPage(
      name: detailProduct,
      page: () => const DetailProductPages(),
    ),
  ];
}