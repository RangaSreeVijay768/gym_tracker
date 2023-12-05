// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/exercise_model_repo.dart'
    as _i5;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/workout_template_model_repo.dart'
    as _i17;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/workout_template_workout_model_repo.dart'
    as _i18;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/repos/workout_template_workout_model_set_repo.dart'
    as _i19;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/excercises/services/exercise_store_service.dart'
    as _i20;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/repos/gym_session_exercise_model_repo.dart'
    as _i8;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/repos/gym_session_exercise_set_model_repo.dart'
    as _i9;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/repos/gym_session_model_repo.dart'
    as _i10;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/sessions/services/session_store_service.dart'
    as _i11;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/repo/user_account_repo.dart'
    as _i12;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/repo/workout_reminder_model_repo.dart'
    as _i14;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/users/services/users_store_service.dart'
    as _i21;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/workout_sessions/repos/workout_session_repo.dart'
    as _i15;
import 'package:beebloom_gym_tracker/app/cloud_firestore/app/workout_sessions/services/workout_store_service.dart'
    as _i16;
import 'package:beebloom_gym_tracker/app/cloud_firestore/core/client/cloud_firestore_client.dart'
    as _i3;
import 'package:beebloom_gym_tracker/app/core/network/dio_client.dart' as _i4;
import 'package:beebloom_gym_tracker/app/core/services/vibrations_service.dart'
    as _i13;
import 'package:beebloom_gym_tracker/app/exercises/services/exercise_fire_store_client.dart'
    as _i22;
import 'package:beebloom_gym_tracker/app/exercises/services/exercise_service.dart'
    as _i23;
import 'package:beebloom_gym_tracker/app/firebase_auth/core/firebase_auth_client.dart'
    as _i6;
import 'package:beebloom_gym_tracker/app/firebase_auth/services/firebase_auth_service.dart'
    as _i7;
import 'package:beebloom_gym_tracker/app/sessions/services/session_fire_store_client.dart'
    as _i24;
import 'package:beebloom_gym_tracker/app/sessions/services/session_service.dart'
    as _i25;
import 'package:beebloom_gym_tracker/app/users/services/users_fire_store_client.dart'
    as _i26;
import 'package:beebloom_gym_tracker/app/users/services/users_service.dart'
    as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.CloudFirestoreClient>(_i3.CloudFirestoreClient());
    gh.singleton<_i4.DioClient>(_i4.DioClient());
    gh.singleton<_i5.ExerciseModelRepo>(
        _i5.ExerciseModelRepo(gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i6.FirebaseAuthClient>(_i6.FirebaseAuthClient());
    gh.singleton<_i7.FirebaseAuthService>(
        _i7.FirebaseAuthService(gh<_i6.FirebaseAuthClient>()));
    gh.singleton<_i8.GymSessionExerciseModelRepo>(
        _i8.GymSessionExerciseModelRepo(gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i9.GymSessionExerciseSetModelRepo>(
        _i9.GymSessionExerciseSetModelRepo(gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i10.GymSessionModelRepo>(
        _i10.GymSessionModelRepo(gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i11.SessionStoreService>(_i11.SessionStoreService(
      gh<_i8.GymSessionExerciseModelRepo>(),
      gh<_i9.GymSessionExerciseSetModelRepo>(),
      gh<_i10.GymSessionModelRepo>(),
    ));
    gh.singleton<_i12.UserAccountModelRepo>(
        _i12.UserAccountModelRepo(gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i13.VibrationsService>(_i13.VibrationsService());
    gh.singleton<_i14.WorkoutReminderModelRepo>(
        _i14.WorkoutReminderModelRepo(gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i15.WorkoutSessionRepo>(
        _i15.WorkoutSessionRepo(gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i16.WorkoutStoreService>(
        _i16.WorkoutStoreService(gh<_i15.WorkoutSessionRepo>()));
    gh.singleton<_i17.WorkoutTemplateModelRepo>(
        _i17.WorkoutTemplateModelRepo(gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i18.WorkoutTemplateWorkoutModelRepo>(
        _i18.WorkoutTemplateWorkoutModelRepo(gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i19.WorkoutTemplateWorkoutModelSetRepo>(
        _i19.WorkoutTemplateWorkoutModelSetRepo(
            gh<_i3.CloudFirestoreClient>()));
    gh.singleton<_i20.ExerciseStoreService>(_i20.ExerciseStoreService(
      gh<_i5.ExerciseModelRepo>(),
      gh<_i17.WorkoutTemplateModelRepo>(),
      gh<_i18.WorkoutTemplateWorkoutModelRepo>(),
      gh<_i19.WorkoutTemplateWorkoutModelSetRepo>(),
    ));
    gh.lazySingleton<_i21.UsersStoreService>(() => _i21.UsersStoreService(
          gh<_i12.UserAccountModelRepo>(),
          gh<_i14.WorkoutReminderModelRepo>(),
        ));
    gh.singleton<_i22.ExerciseFireStoreClient>(_i22.ExerciseFireStoreClient(
      gh<_i20.ExerciseStoreService>(),
      gh<_i21.UsersStoreService>(),
    ));
    gh.singleton<_i23.ExerciseService>(
        _i23.ExerciseService(gh<_i22.ExerciseFireStoreClient>()));
    gh.singleton<_i24.SessionFireStoreClient>(_i24.SessionFireStoreClient(
      gh<_i11.SessionStoreService>(),
      gh<_i21.UsersStoreService>(),
      gh<_i20.ExerciseStoreService>(),
    ));
    gh.singleton<_i25.SessionService>(
        _i25.SessionService(gh<_i24.SessionFireStoreClient>()));
    gh.singleton<_i26.UsersFireStoreClient>(
        _i26.UsersFireStoreClient(gh<_i21.UsersStoreService>()));
    gh.singleton<_i27.UsersService>(_i27.UsersService(
      gh<_i21.UsersStoreService>(),
      gh<_i7.FirebaseAuthService>(),
      gh<_i16.WorkoutStoreService>(),
      gh<_i26.UsersFireStoreClient>(),
    ));
    return this;
  }
}
