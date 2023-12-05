import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'users_get_or_create_user_account_model_by_firebase_uid_controller.dart';
import 'users_get_or_create_user_account_model_by_firebase_uid_cubit.dart';

class UsersGetOrCreateUserAccountModelByFirebaseUid extends BaseStatelessWidget<
    UsersGetOrCreateUserAccountModelByFirebaseUidController,
    UsersGetOrCreateUserAccountModelByFirebaseUidCubit,
    UsersGetOrCreateUserAccountModelByFirebaseUidState> {
  String? firebaseUid;

  UsersGetOrCreateUserAccountModelByFirebaseUid(
      {Key? key, String? firebaseUid, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersGetOrCreateUserAccountModelByFirebaseUidCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<UsersGetOrCreateUserAccountModelByFirebaseUidCubit,
          UsersGetOrCreateUserAccountModelByFirebaseUidState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

  @override
  UsersGetOrCreateUserAccountModelByFirebaseUidCubit
      createCubitAndAssignToController(BuildContext context) {
    UsersGetOrCreateUserAccountModelByFirebaseUidCubit cubit =
        UsersGetOrCreateUserAccountModelByFirebaseUidCubit(
            context: context, firebaseUid: firebaseUid);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
