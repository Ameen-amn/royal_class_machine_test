import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:royal_class/data/model/hive_model.dart';
import 'package:royal_class/injectable.dart';
import 'package:royal_class/presentation/core/bloc/product_bloc.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/description_page/description_screen.dart';
import 'package:royal_class/presentation/home_screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ItemModelAdapter());
  await Hive.openBox('cacheBox');
  configureDependencies();

  // await Firebase.initializeApp(options: FirebaseOptions.);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => getIt<ProductBloc>()
              ..add(const ProductEvent.lazyLoadProducts()))
      ],
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
          DetailScreen.detailScreen: (_) => const DetailScreen()
        },
      ),
    );
  }
}
