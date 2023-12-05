import 'package:beebloom_gym_tracker/app/core/logger/log.dart';
import 'package:beebloom_gym_tracker/app/users/services/models/users_set_network_state/users_set_network_state_request.dart';
import 'package:beebloom_gym_tracker/app/users/services/users_service.dart';
import 'package:beebloom_gym_tracker/app/users/widgets/users_set_network_state/users_set_network_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '/app/core/blocs/base_cubit.dart';
import '/app/core/database/boolean_status.dart';

part 'users_set_network_state_cubit.freezed.dart';
part 'users_set_network_state_state.dart';

class UsersSetNetworkStateCubit extends BaseCubit<UsersSetNetworkStateState> {
  late UsersService usersService;

  UsersSetNetworkStateCubit({required super.context})
      : super(initialState: UsersSetNetworkStateState.initial()) {
    usersService = GetIt.instance<UsersService>();
  }

  UsersSetNetworkStateRequest createRequestData({bool? enabled}) {
    final request = UsersSetNetworkStateRequest(enabled: enabled);
    return request;
  }

  Future<void> setNetworkState(UsersSetNetworkStateRequest request) async {
    logger.d('set request');
    return usersService.setNetworkState(request).then((value) {
      emit(state.copyWith(
          usersSetNetworkStateResponse: request.enabled,
          usersSetNetworkStateStatus: BooleanStatus.success));
      // return Future.value(request.enabled);
    }).catchError((error) {
      emit(state.copyWith(usersSetNetworkStateStatus: BooleanStatus.error));
      throw error;
    });
  }
}
