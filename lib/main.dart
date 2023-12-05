import 'package:beebloom_gym_tracker/app/authentication/authentication_cubit.dart';
import 'package:beebloom_gym_tracker/app/core/blocs/app_bloc_observer.dart';
import 'package:beebloom_gym_tracker/app/core/di/injection.dart';
import 'package:beebloom_gym_tracker/app/routes/routes.dart';
import 'package:beebloom_gym_tracker/app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  Bloc.observer = const AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await configureDependencies();
  runApp(const BeebloomGymTrackerApp());
}

class BeebloomGymTrackerApp extends StatelessWidget {
  const BeebloomGymTrackerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationCubit>(
          create: (context) => AuthenticationCubit(context: context),
        ),
      ],
      child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: router,
            theme: Themes.lightTheme,
          );
        },
      ),
    );
  }
}
