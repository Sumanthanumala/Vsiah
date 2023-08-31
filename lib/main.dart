import 'package:vsiah/utils/export.dart';
import 'package:vsiah/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      child: GetMaterialApp(
        theme: ThemeData(
            datePickerTheme: DatePickerThemeData(
          yearForegroundColor: MaterialStatePropertyAll(Color(0xFF002664)),
          headerBackgroundColor: Color(0xFF002664),
                )),
        getPages: Routes.routes,
        debugShowCheckedModeBanner: false,
        home: Splashscreen(),
      ),
    );
  }
}

//vsiah