import 'package:alphabetic_words_auto_reply/view/chat_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EasyLocalization(
    path: "assets/translations",
    supportedLocales: [
      Locale("en", "US"),
    ],
    fallbackLocale: Locale("en", "US"),
    startLocale: Locale("en", "US"),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}
