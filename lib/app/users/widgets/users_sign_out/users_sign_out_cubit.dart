import 'package:beebloom_gym_tracker/app/users/services/models/sign_out/sign_out_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/sign_out/sign_out_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/users_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'users_sign_out_cubit.freezed.dart';
part 'users_sign_out_state.dart';

class UsersSignOutCubit extends BaseCubit<UsersSignOutState> {
  late UsersService usersService;

  UsersSignOutCubit({required super.context})
      : super(initialState: UsersSignOutState.initial()) {
    usersService = GetIt.instance<UsersService>();
  }

  SignOutRequest createRequestData() {
    final request = SignOutRequest();
    return request;
  }

  Future<void> signOut(SignOutRequest request) async {
    return usersService.signOut(request).then((value) {
      emit(state.copyWith(signOutStatus: BooleanStatus.success));
    }).catchError((error) {
      emit(state.copyWith(signOutStatus: BooleanStatus.error));
      throw error;
    });
  }
}
