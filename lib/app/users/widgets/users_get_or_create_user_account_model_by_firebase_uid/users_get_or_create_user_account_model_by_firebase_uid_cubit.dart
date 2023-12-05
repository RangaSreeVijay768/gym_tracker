import 'package:beebloom_gym_tracker/app/users/services/models/get_or_create_user_account_model_by_firebase_uid/get_or_create_user_account_model_by_firebase_uid_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/get_or_create_user_account_model_by_firebase_uid/get_or_create_user_account_model_by_firebase_uid_response.dart';
import 'package:beebloom_gym_tracker/app/users/services/users_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'users_get_or_create_user_account_model_by_firebase_uid_state.dart';

part 'users_get_or_create_user_account_model_by_firebase_uid_cubit.freezed.dart';

class UsersGetOrCreateUserAccountModelByFirebaseUidCubit
    extends BaseCubit<UsersGetOrCreateUserAccountModelByFirebaseUidState> {
  late UsersService usersService;

  UsersGetOrCreateUserAccountModelByFirebaseUidCubit(
      {required super.context, String? firebaseUid})
      : super(
            initialState:
                UsersGetOrCreateUserAccountModelByFirebaseUidState.initial(
                    firebaseUid: firebaseUid)) {
    usersService = GetIt.instance<UsersService>();
  }

  GetOrCreateUserAccountModelByFirebaseUidRequest createRequestData(
      {String? firebaseUid}) {
    final request = GetOrCreateUserAccountModelByFirebaseUidRequest(
        firebaseUid: firebaseUid ?? state.firebaseUid);
    return request;
  }

  Future<GetOrCreateUserAccountModelByFirebaseUidResponse>
      getOrCreateUserAccountModelByFirebaseUid(
          GetOrCreateUserAccountModelByFirebaseUidRequest request) async {
    return usersService
        .getOrCreateUserAccountModelByFirebaseUid(request)
        .then((value) {
      emit(state.copyWith(
          getOrCreateUserAccountModelByFirebaseUidResponse: value,
          getOrCreateUserAccountModelByFirebaseUidStatus:
              BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(
          getOrCreateUserAccountModelByFirebaseUidStatus: BooleanStatus.error));
      throw error;
    });
  }
}
