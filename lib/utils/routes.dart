import 'export.dart';

class Routes {
  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: kmembers,
      transition: Transition.rightToLeft,
      page: () => Member(),
    ),
    GetPage(
      name: kactiveplans,
      transition: Transition.rightToLeft,
      page: () => Activeplans(),
    ),
    GetPage(
      name: kabout,
      transition: Transition.rightToLeft,
      page: () => About(),
    ),
    GetPage(
      name: ksendfeedback,
      transition: Transition.rightToLeft,
      page: () => Sendfeedback(),
    )
  ];
}
