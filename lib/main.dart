import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royal_class/injectable.dart';
import 'package:royal_class/presentation/core/bloc/product_bloc.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/description_page/description_screen.dart';
import 'package:royal_class/presentation/description_page/widget/detail_bottom_bar.dart';
import 'package:royal_class/presentation/home_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<ProductBloc>())],
      child: MaterialApp(
        title: 'Royal Class',
        debugShowCheckedModeBanner: false,
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
      ),
    );
  }
}
