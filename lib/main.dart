import 'package:flutter/material.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/home_screen/home_screen.dart';
import 'package:royal_class/presentation/pages/description_screen.dart';
import 'package:royal_class/presentation/pages/widget/detail_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          
            bodyMedium:
                TextStyle(color: ColorConstants.kDeactive, fontSize: 20)),
        colorScheme: ColorScheme.fromSeed(
          
            surface: ColorConstants.kBackgroundColor,
            seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (ctx) => const HomeScreen(),
        DetailBottomBar.detailScreen: (_) => const DetailScreen()
      },
    );
  }
}
