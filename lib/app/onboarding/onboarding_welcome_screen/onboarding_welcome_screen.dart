import 'package:beebloom_gym_tracker/app/authentication/authentication_cubit.dart';
import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_gym_tracker/app/core/models/users/user_account.dart';
import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/buttons.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_or_create_user_account_model_by_firebase_uid/get_or_create_user_account_model_by_firebase_uid_response.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_get_or_create_user_account_model_by_firebase_uid/users_get_or_create_user_account_model_by_firebase_uid.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_get_or_create_user_account_model_by_firebase_uid/users_get_or_create_user_account_model_by_firebase_uid_controller.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_sign_in_annonymously/users_sign_in_annonymously.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_sign_in_annonymously/users_sign_in_annonymously_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'onboarding_welcome_screen_controller.dart';
import 'onboarding_welcome_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class OnboardingWelcomeScreen extends BaseStatelessWidget<
    OnboardingWelcomeScreenController,
    OnboardingWelcomeScreenCubit,
    OnboardingWelcomeScreenState> {
  OnboardingWelcomeScreen({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  UsersSignInAnnonymouslyController usersSignInAnnonymouslyController =
  UsersSignInAnnonymouslyController();
  UsersGetOrCreateUserAccountModelByFirebaseUidController getOrCreateUserAccountModelByFirebaseUidController = UsersGetOrCreateUserAccountModelByFirebaseUidController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingWelcomeScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<OnboardingWelcomeScreenCubit,
          OnboardingWelcomeScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            body: Container(
              width: MediaQuery
                  .sizeOf(context)
                  .width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: AppColors.bgFilter,
                    image: AssetImage("images/gym_bg.png"),
                    fit: BoxFit.fitHeight),
              ),
              child: Container(
                padding: edge_insets_24,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Welcome to Gym tracker",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: Fonts.fontSize32,
                          fontWeight: Fonts.f600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    UsersSignInAnnonymouslyEmptyWidget(
                      controller: usersSignInAnnonymouslyController,
                    ),
                    UsersGetOrCreateUserAccountModelByFirebaseUid(
                      controller: getOrCreateUserAccountModelByFirebaseUidController,),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Expanded(
                              child: TextButton(
                                  style: Buttons.primaryButton,
                                  onPressed: (state.usersSignInAnnonymouslyState
                                      ?.signInAnonymouslyStatus ==
                                      BooleanStatus.pending)
                                      ? null
                                      : () async {
                                    UserCredential? userCredential = await usersSignInAnnonymouslyController
                                        .getChildCubit()
                                        .signInAnonymously(
                                        usersSignInAnnonymouslyController
                                            .getChildCubit()
                                            .createRequestData());
                                    if (userCredential != null) {
                                      GetOrCreateUserAccountModelByFirebaseUidResponse response = await getOrCreateUserAccountModelByFirebaseUidController
                                          .getChildCubit()
                                          .getOrCreateUserAccountModelByFirebaseUid(
                                          getOrCreateUserAccountModelByFirebaseUidController
                                              .getChildCubit()
                                              .createRequestData(
                                              firebaseUid: userCredential!.user!
                                                  .uid!));

                                      AuthenticationCubit authenticationCubit = BlocProvider
                                          .of<AuthenticationCubit>(context);
                                      await authenticationCubit.saveUserAccount(
                                          response.userAccount!);
                                      context.go("/home");
                                    }
                                  },
                                  child: Text(
                                    "Get Started",
                                    style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: Fonts.f500,
                                        fontSize: Fonts.fontSize18),
                                  )))
                        ],
                      ),
                    )
                    // SizedBox(height: 48,)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  OnboardingWelcomeScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    OnboardingWelcomeScreenCubit cubit =
    OnboardingWelcomeScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
