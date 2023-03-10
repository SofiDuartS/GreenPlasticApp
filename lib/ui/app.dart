import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:named_getx_navigation/constants.dart';
import 'package:named_getx_navigation/ui/pages/authentication/signup.dart';
import 'package:named_getx_navigation/ui/pages/content/home.dart';
import 'pages/authentication/login.dart';
import 'pages/content/detail.dart';
import 'pages/start.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Flutter Navigation',
      // This theme was made for FlexColorScheme version 6.1.1. Make sure
// you use same or higher version, but still same major version. If
// you use a lower version, some properties may not be supported. In
// that case you can also remove them after copying the theme to your app.
      theme: FlexThemeData.light(
        scheme: FlexScheme.green,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 9,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          defaultRadius: 25.0,
          elevatedButtonRadius: 40.0,
          inputDecoratorRadius: 40.0,
          inputDecoratorFocusedBorderWidth: 2.0,
          bottomNavigationBarSelectedLabelSchemeColor:
              SchemeColor.primaryContainer,
          bottomNavigationBarUnselectedLabelSchemeColor:
              SchemeColor.onPrimaryContainer,
          bottomNavigationBarSelectedIconSchemeColor:
              SchemeColor.primaryContainer,
          bottomNavigationBarUnselectedIconSchemeColor:
              SchemeColor.onPrimaryContainer,
          navigationBarHeight: 55.0,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        // To use the playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.green,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 15,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          defaultRadius: 25.0,
          elevatedButtonRadius: 40.0,
          inputDecoratorRadius: 40.0,
          inputDecoratorFocusedBorderWidth: 2.0,
          bottomNavigationBarSelectedLabelSchemeColor:
              SchemeColor.primaryContainer,
          bottomNavigationBarUnselectedLabelSchemeColor:
              SchemeColor.onPrimaryContainer,
          bottomNavigationBarSelectedIconSchemeColor:
              SchemeColor.primaryContainer,
          bottomNavigationBarUnselectedIconSchemeColor:
              SchemeColor.onPrimaryContainer,
          navigationBarHeight: 55.0,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,

      initialRoute: START_ROUTE,
      getPages: [
        GetPage(name: START_ROUTE, page: () => StartScreen()),
        GetPage(name: LOGIN_ROUTE, page: () => LoginScreen()),
        GetPage(name: SIGNUP_ROUTE, page: () => SignUpPage()),
        GetPage(name: DETAIL_ROUTE, page: () => DetailPage()),
        GetPage(
            name: HOME_ROUTE,
            page: () => HomePage(),
            transition: Transition.zoom),
      ],
    );
  }
}
