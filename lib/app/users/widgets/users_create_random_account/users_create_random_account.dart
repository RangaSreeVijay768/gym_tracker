import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_string/random_string.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'users_create_random_account_controller.dart';
import 'users_create_random_account_cubit.dart';

class UsersCreateRandomAccount extends BaseStatelessWidget<
    UsersCreateRandomAccountController,
    UsersCreateRandomAccountCubit,
    UsersCreateRandomAccountState> {
  UsersCreateRandomAccount({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersCreateRandomAccountCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersCreateRandomAccountCubit,
          UsersCreateRandomAccountState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return ElevatedButton(
            child: Text('Create account'),
            onPressed: () async {
              await getCubit(context).createUserAccount(getCubit(context)
                  .createRequestData(accountName: randomAlpha(10)));
              logger.d("Id: ${state.createUserAccountResponse!.userAccountId!}");
            },
          );
        },
      ),
    );
  }

  @override
  UsersCreateRandomAccountCubit createCubitAndAssignToController(
      BuildContext context) {
    UsersCreateRandomAccountCubit cubit =
        UsersCreateRandomAccountCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
