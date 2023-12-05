import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/models/users/user_account.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '../../../tracker/screens/tracker_history_template_details_screen/tracker_history_template_details_screen.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import '/app/themes/shadows.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'sessions_get_all_gym_sessions_by_user_account_controller.dart';
import 'sessions_get_all_gym_sessions_by_user_account_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsGetAllGymSessionsByUserAccount
    extends BaseStatelessWidget<
        SessionsGetAllGymSessionsByUserAccountController,
        SessionsGetAllGymSessionsByUserAccountCubit,
        SessionsGetAllGymSessionsByUserAccountState> {

  UserAccount userAccount;
  SessionsGetAllGymSessionsByUserAccount(
      {super.key, super.controller, super.onStateChanged, required this.userAccount});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsGetAllGymSessionsByUserAccountCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          SessionsGetAllGymSessionsByUserAccountCubit,
          SessionsGetAllGymSessionsByUserAccountState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getAllGymSessionsByUserAccountResponse?.gymSessions != null
          ? Column(
            children: [
              Container(
                padding: edge_insets_y_16,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: [shadows.bs_grey],
                  borderRadius: borderRadius.br_10
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${state.getAllGymSessionsByUserAccountResponse!.gymSessions!.length}     ", style: TextStyle(
                          fontSize: Fonts.fontSize18,
                          fontWeight: Fonts.f700
                        ),),
                        Text("400   ", style: TextStyle(
                            fontSize: Fonts.fontSize18,
                            fontWeight: Fonts.f700
                        ),),
                        Text("  20   ", style: TextStyle(
                            fontSize: Fonts.fontSize18,
                            fontWeight: Fonts.f700
                        ),),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("WORKOUTS", style: TextStyle(
                          fontWeight: Fonts.f500,
                          fontSize: Fonts.fontSize12,
                          color: AppColors.grey1
                        ),),
                        Text("TOTAL KCAL", style: TextStyle(
                            fontWeight: Fonts.f500,
                            fontSize: Fonts.fontSize12,
                            color: AppColors.grey1
                        ),),
                        Text("TOTAL MINUTES", style: TextStyle(
                            fontWeight: Fonts.f500,
                            fontSize: Fonts.fontSize12,
                            color: AppColors.grey1
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.getAllGymSessionsByUserAccountResponse!.gymSessions!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: edge_insets_t_16,
                      decoration: BoxDecoration(
                          boxShadow: [shadows.bs_grey],
                          color: AppColors.white,
                          borderRadius: borderRadius.br_10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      TrackerHistoryTemplateDetailsScreen()));
                        },
                        child: Container(
                          padding: edge_insets_16,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Biceps",
                                    style: TextStyle(
                                      fontSize: Fonts.fontSize16,
                                      fontWeight: Fonts.f700,
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.sizeOf(context).width/3.5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('200', style: TextStyle(
                                            fontSize: Fonts.fontSize16,
                                            fontWeight: Fonts.f700
                                        ),),
                                        Text("10   ",style: TextStyle(
                                            fontSize: Fonts.fontSize16,
                                            fontWeight: Fonts.f700
                                        ),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    state.getAllGymSessionsByUserAccountResponse!.gymSessions![index].userAccountId.toString(),
                                    style: TextStyle(
                                        fontSize: Fonts.fontSize14,
                                        color: AppColors.grey1),
                                  ),
                                  Container(
                                    width: MediaQuery.sizeOf(context).width/3.5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('KCAL', style: TextStyle(
                                            fontSize: Fonts.fontSize12,
                                            fontWeight: Fonts.f500
                                        ),),
                                        Text("MINUTES",style: TextStyle(
                                            fontSize: Fonts.fontSize12,
                                            fontWeight: Fonts.f500
                                        ),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: edge_insets_y_16,
                                decoration: BoxDecoration(
                                    border: borders.bb_1px_grey4
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "2 x   Aerobics",
                                    style: TextStyle(
                                      fontSize: Fonts.fontSize14,
                                    ),
                                  ),
                                  Text(
                                    "10kg x 15 reps",
                                    style: TextStyle(
                                        fontSize: Fonts.fontSize14,
                                        color: AppColors.grey1),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "2 x   Aerobics",
                                    style: TextStyle(
                                      fontSize: Fonts.fontSize14,
                                    ),
                                  ),
                                  Text(
                                    "10kg x 15 reps",
                                    style: TextStyle(
                                        fontSize: Fonts.fontSize14,
                                        color: AppColors.grey1),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          )
          : Center(
              child: Container(
                width: MediaQuery.sizeOf(context).width/1.5,
                padding: edge_insets_y_24,
                decoration: BoxDecoration(
                    boxShadow: const [shadows.bs_primary],
                    color: AppColors.white,
                    borderRadius: borderRadius.br_10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoadingAnimationWidget.discreteCircle(
                        color: AppColors.bgPrimary,
                        size: 50,
                        secondRingColor: AppColors.bmiTracker,
                        thirdRingColor: AppColors.waterPrimary),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(" Loading\n please wait....")
                  ],
                ),
              ));
        },
      ),
    );
  }

  @override
  SessionsGetAllGymSessionsByUserAccountCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsGetAllGymSessionsByUserAccountCubit cubit = SessionsGetAllGymSessionsByUserAccountCubit(
        context: context, userAccount: userAccount);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
