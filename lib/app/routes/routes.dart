import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_gym_tracker/app/onboarding/onboarding_welcome_screen/onboarding_welcome_screen.dart';
import 'package:beebloom_gym_tracker/app/users/screens/users_home_screen/users_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../tracker/screens/tracker_main_screen/tracker_main_screen.dart';
import '/app/authentication/authentication_cubit.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return BlocListener<AuthenticationCubit, AuthenticationState>(
          listener: (context, state) {
            if (state.authenticationStatus == BooleanStatus.success) {
              context.go('/home');
            } else if (state.authenticationStatus == BooleanStatus.error) {
              context.go('/welcomeScreen');
            } else {
              context.go('/welcome');
            }
          },
          child: const SizedBox(),
        );
      }),
  GoRoute(
      path: '/welcome',
      builder: (context, state) => UsersHomeScreen(
            pageContext: context,
            goRouterState: state,
          )),
  GoRoute(
      path: '/welcomeScreen',
      builder: (context, state) => OnboardingWelcomeScreen()),
  GoRoute(path: "/home", builder: (context, state) => TrackerMainScreen())
]);
