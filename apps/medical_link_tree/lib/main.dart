import 'dart:math';

import 'package:auth/module.dart';
import 'package:commons/modules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_link_tree/presentation/screen/dr_alfonso_diaz.dart';
import 'package:medical_link_tree/presentation/screen/dra_gheidy_chinchilla.dart';
import 'package:medical_link_tree/presentation/screen/dra_magaly_sanchez.dart';
import 'package:medical_link_tree/presentation/screen/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(AuthService()),
        ),
        BlocProvider<UserBloc>(
          create: (context) => UserBloc(UserService()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      routes: [
        //login
        GoRoute(
            path: RoutesName.login,
            name: RoutesName.login,
            builder: (context, state) => const LoginScreen(
              title: 'Bienvenido a Médicos Honestos',
              description: 'Directorio de médicos 100% verificados en México.',
                  imageUrl:
                      'https://eko2cero.com.mx/wp-content/uploads/2023/03/Marketing-digital-para-medicos.jpg',
                ),
            routes: [
              GoRoute(
                path: RoutesName.resetPassword,
                name: RoutesName.resetPassword,
                builder: (context, state) => ResetPasswordScreen(),
              ),
            ]),

        GoRoute(
          path: RoutesName.splash,
          name: RoutesName.splash,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: 'dra-gheidy-chinchilla',
                builder: (context, state) => const DraGheidyChinchillaScreen(),
              ),
              GoRoute(
                path: 'dra-magaly-sanchez',
                builder: (context, state) => const DraMagalySanchezScreen(),
              ),
              GoRoute(
                  path: 'dr-alfonso-diaz',
                  builder: (context, state) => const DrAlfonsoDiazScreen()),
            ]),
      ],
    );

    return MaterialApp.router(
      title: 'Médicos Honestos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0A1D8D), 
        primary: const Color(0xFF0A1D8D)),
        useMaterial3: true,
        fontFamily: 'Nunito-Sans',
      ),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
