import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/app/routes/routes.dart';
import 'modules/app/theme/app_theme.dart';
import 'modules/app/translations/app_translations.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: Routes.initial,
      getPages: Routes.pages,
      theme: appThemeData,
      defaultTransition: Transition.fade,
      locale: Locale('en', 'US'),
      translationsKeys: AppTranslation.translations,
      debugShowCheckedModeBanner: false,
    ),
  );
}
