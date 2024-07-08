import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:royal_class/data/model/hive_model.dart';
import 'package:royal_class/firebase_options.dart';
import 'package:royal_class/injectable.dart';
import 'package:royal_class/presentation/auth/bloc/auth_bloc.dart';
import 'package:royal_class/presentation/auth/login_screen.dart';
import 'package:royal_class/presentation/auth/singup_scren.dart';
import 'package:royal_class/presentation/core/bloc/product_bloc.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/widget/texttheme.dart';
import 'package:royal_class/presentation/description_page/description_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ItemModelAdapter());
  await Hive.openBox('cacheBox');
  configureDependencies();

  late final FirebaseApp app;
  late final FirebaseAuth auth;

  app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  auth = FirebaseAuth.instanceFor(app: app);

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
              ..add(const ProductEvent.lazyLoadProducts())),
        BlocProvider(create: (_) => getIt<AuthBloc>())
      ],
      child: MaterialApp(
        title: 'Royal Class',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextthemeConstants.textTheme,
          colorScheme: ColorScheme.fromSeed(
              surface: ColorConstants.kBackgroundColor,
              seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          // '/': (ctx) => const HomeScreen(),
          '/': (ctx) => const LoginScreen(),
          DetailScreen.detailScreen: (_) => const DetailScreen(),
          LoginScreen.routeName: (_) => const LoginScreen(),
          SignUpScreen.routeName: (_) =>  SignUpScreen(),
        },
      ),
    );
  }
}
