import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'users_set_network_state_controller.dart';
import 'users_set_network_state_cubit.dart';

class UsersSetNetworkState extends BaseStatelessWidget<
    UsersSetNetworkStateController,
    UsersSetNetworkStateCubit,
    UsersSetNetworkStateState> {
  UsersSetNetworkState({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersSetNetworkStateCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersSetNetworkStateCubit, UsersSetNetworkStateState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return ElevatedButton(
              onPressed: () {
                getCubit(context).setNetworkState(getCubit(context)
                    .createRequestData(enabled: !(state.usersSetNetworkStateResponse??true)));
              },
              child: Text(state.usersSetNetworkStateResponse??false
                  ? 'Disable network'
                  : "Enable network"));
        },
      ),
    );
  }

  @override
  UsersSetNetworkStateCubit createCubitAndAssignToController(
      BuildContext context) {
    UsersSetNetworkStateCubit cubit =
        UsersSetNetworkStateCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
