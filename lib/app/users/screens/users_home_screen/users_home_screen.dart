import 'package:beebloom_gym_tracker/app/core/widgets/base_screen_widget.dart';
import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_create_workout_template_model/exercises_create_workout_template_model.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_create_random_account/users_create_random_account.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_get_all_user_accounts/users_get_all_user_accounts_controller.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_set_network_state/users_set_network_state.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_sign_in_annonymously/users_sign_in_annonymously.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_sign_out/users_sign_out.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/themes/edge_insets.dart';
import 'users_home_screen_controller.dart';
import 'users_home_screen_cubit.dart';

class UsersHomeScreen extends BaseScreenWidget<UsersHomeScreenController,
    UsersHomeScreenCubit, UsersHomeScreenState> {
  UsersHomeScreen(
      {required super.goRouterState,
      required super.pageContext,
      Key? key,
      super.controller,
      super.onStateChanged})
      : super(key: key);
  UsersGetAllUserAccountsController usersGetAllUserAccountsController =
      UsersGetAllUserAccountsController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersHomeScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersHomeScreenCubit, UsersHomeScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Container(
                    padding: edge_insets_y_12,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Select Restaurant",
                        style: TextStyle(
                            fontSize: Fonts.fontSize20, fontWeight: Fonts.f700),
                      ),
                    )),
              ),
              body: Column(
                children: [
                  UsersCreateRandomAccount(
                    onStateChanged: (usersCreateRandomAccountState) {
                      usersGetAllUserAccountsController
                          .getChildCubit()
                          .getAllUserAccounts(usersGetAllUserAccountsController
                              .getChildCubit()
                              .createRequestData());
                    },
                  ),
                  UsersSetNetworkState(),
                  ElevatedButton(
                      onPressed: () {
                        usersGetAllUserAccountsController
                            .getChildCubit()
                            .getAllUserAccounts(
                                usersGetAllUserAccountsController
                                    .getChildCubit()
                                    .createRequestData());
                      },
                      child: Text('Get accounts')),
                  UsersSignInAnnonymously(),
                  UsersSignOut(),
                  ExercisesCreateWorkoutTemplateModel()
                  // UsersGetAllUserAccounts(
                  //   controller: usersGetAllUserAccountsController,
                  // )
                ],
              ));
        },
      ),
    );
  }

  @override
  UsersHomeScreenCubit createCubitAndAssignToController(BuildContext context) {
    UsersHomeScreenCubit cubit = UsersHomeScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
