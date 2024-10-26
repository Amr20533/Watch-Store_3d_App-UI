import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watch_store_3d_app_ui/modeules/app_theme.dart';
import 'package:watch_store_3d_app_ui/screens/details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watch Store',
      theme: appTheme,
      home: const DetailsScreen(),
    );
  }
}
