import 'package:beebloom_gym_tracker/app/core/utils/app_date_time_utils.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_create_workout_reminder/users_create_workout_reminder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'users_get_all_user_accounts_controller.dart';
import 'users_get_all_user_accounts_cubit.dart';

class UsersGetAllUserAccounts extends BaseStatelessWidget<
    UsersGetAllUserAccountsController,
    UsersGetAllUserAccountsCubit,
    UsersGetAllUserAccountsState> {
  UsersGetAllUserAccounts({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersGetAllUserAccountsCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersGetAllUserAccountsCubit,
          UsersGetAllUserAccountsState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return ListView(
              shrinkWrap: true,
              children: (state.getAllUserAccountsResponse != null &&
                      state.getAllUserAccountsResponse!.size != 0)
                  ? state.getAllUserAccountsResponse!.userAccounts!
                      .map((userAccount) {
                      return Row(
                        children: [
                          Text(userAccount.accountName!),
                          Text("Id: ${userAccount.id}"),
                          UsersCreateWorkoutReminder(userAccount: userAccount),
                          userAccount.createdTime != null
                              ? Text(AppDateTimeUtils.formatDateTime(
                                  userAccount.createdTime!,
                                  AppDateTimeUtils.defaultDateFormat))
                              : SizedBox.shrink(),
                          // UsersCreateWorkoutSession(userAccountModel: userAccount.reference)
                        ],
                      );
                    }).toList()
                  : [Text('no elements')]);
        },
      ),
    );
  }

  @override
  UsersGetAllUserAccountsCubit createCubitAndAssignToController(
      BuildContext context) {
    UsersGetAllUserAccountsCubit cubit =
        UsersGetAllUserAccountsCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
