import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'users_sign_in_annonymously_controller.dart';
import 'users_sign_in_annonymously_cubit.dart';

class UsersSignInAnnonymously extends BaseStatelessWidget<
    UsersSignInAnnonymouslyController,
    UsersSignInAnnonymouslyCubit,
    UsersSignInAnnonymouslyState> {
  UsersSignInAnnonymously({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersSignInAnnonymouslyCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersSignInAnnonymouslyCubit,
          UsersSignInAnnonymouslyState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return ElevatedButton(
              onPressed: state.signInAnonymouslyStatus == BooleanStatus.pending
                  ? null
                  : () {
                      getCubit(context).signInAnonymously(
                          getCubit(context).createRequestData());
                    },
              child: Text('Signin'));
        },
      ),
    );
  }

  @override
  UsersSignInAnnonymouslyCubit createCubitAndAssignToController(
      BuildContext context) {
    UsersSignInAnnonymouslyCubit cubit =
        UsersSignInAnnonymouslyCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}


class UsersSignInAnnonymouslyEmptyWidget extends UsersSignInAnnonymously{
  UsersSignInAnnonymouslyEmptyWidget({super.key, super.controller});

  @override
  Widget build(BuildContext context){
    return BlocProvider<UsersSignInAnnonymouslyCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersSignInAnnonymouslyCubit, UsersSignInAnnonymouslyState>(
        listener: (context, state){},
        builder: (context, state){
          initializeController(context);
          return Container();
        },
      ),
    );
  }
}
