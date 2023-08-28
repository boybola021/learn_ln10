
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

import 'app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await  EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('uz', 'UZ'),
      ],
      path: 'assets/translate',
      fallbackLocale: const Locale('en', 'US'),
      child: const App(),
    ),
  );
}
