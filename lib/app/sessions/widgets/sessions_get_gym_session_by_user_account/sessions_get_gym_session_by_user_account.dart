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
import 'package:go_router/go_router.dart';

import 'sessions_get_gym_session_by_user_account_controller.dart';
import 'sessions_get_gym_session_by_user_account_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsGetGymSessionByUserAccount
    extends BaseStatelessWidget<
        SessionsGetGymSessionByUserAccountController,
        SessionsGetGymSessionByUserAccountCubit,
        SessionsGetGymSessionByUserAccountState> {

  UserAccount userAccount;
  SessionsGetGymSessionByUserAccount(
      {Key? key, super.controller, super.onStateChanged, required this.userAccount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsGetGymSessionByUserAccountCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          SessionsGetGymSessionByUserAccountCubit,
          SessionsGetGymSessionByUserAccountState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getGymSessionModelsByUserAccountModelResponse != null
          ? state.getGymSessionModelsByUserAccountModelResponse!.gymSession != null
              ? ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.getGymSessionModelsByUserAccountModelResponse!.gymSession!.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: edge_insets_t_16,
                  decoration: BoxDecoration(
                      border: borders.b_1px_grey2,
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
                          Text(
                            "Morning Workout",
                            style: TextStyle(
                              fontSize: Fonts.fontSize16,
                              fontWeight: Fonts.f600,
                            ),
                          ),
                          Text(
                            state.getGymSessionModelsByUserAccountModelResponse!.gymSession![index].userAccount!.emailId!,
                            style: TextStyle(
                                fontSize: Fonts.fontSize14,
                                color: AppColors.grey1),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: AppColors.grey1,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "16s",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize14),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.monitor_weight,
                                color: AppColors.grey1,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2kg",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize14),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.task,
                                color: AppColors.grey1,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "1 PRs",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Exercise",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    fontWeight: Fonts.f500),
                              ),
                              Text(
                                "Best set",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    fontWeight: Fonts.f500),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "2 x Aerobics",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.grey1),
                              ),
                              Text(
                                "0:50",
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
              : SizedBox()
          : Text("no");
        },
      ),
    );
  }

  @override
  SessionsGetGymSessionByUserAccountCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsGetGymSessionByUserAccountCubit cubit = SessionsGetGymSessionByUserAccountCubit(
        context: context, userAccount: userAccount);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
