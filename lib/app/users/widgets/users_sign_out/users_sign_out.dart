import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'users_sign_out_controller.dart';
import 'users_sign_out_cubit.dart';

class UsersSignOut extends BaseStatelessWidget<UsersSignOutController,
    UsersSignOutCubit, UsersSignOutState> {
  UsersSignOut({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersSignOutCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersSignOutCubit, UsersSignOutState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return ElevatedButton(
              onPressed: state.signOutStatus == BooleanStatus.pending
                  ? null
                  : () async {
                      await getCubit(context)
                          .signOut(getCubit(context).createRequestData());
                    },
              child: Text('Sign out'));
        },
      ),
    );
  }

  @override
  UsersSignOutCubit createCubitAndAssignToController(BuildContext context) {
    UsersSignOutCubit cubit = UsersSignOutCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
