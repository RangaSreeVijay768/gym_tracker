import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_gym_tracker/app/sessions/services/models/create_gym_session_exercise_set/create_gym_session_exercise_set_response.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_create_gym_session_exercise_set/sessions_create_gym_session_exercise_set.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_create_gym_session_exercise_set/sessions_create_gym_session_exercise_set_controller.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_get_all_gym_session_exercise_sets/sessions_get_all_gym_session_exercise_sets_controller.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/fonts.dart';
import '../sessions_get_all_gym_session_exercise_sets/sessions_get_all_gym_session_exercise_sets.dart';
import '../sessions_get_gym_session_exercise/sessions_get_gym_session_exercise.dart';
import '../sessions_get_gym_session_exercise_set_by_gym_session_exercise/sessions_get_gym_session_exercise_set_by_gym_session_exercise.dart';
import 'sessions_get_all_gym_session_exercises_controller.dart';
import 'sessions_get_all_gym_session_exercises_cubit.dart';
import 'package:dotted_line/dotted_line.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsGetAllGymSessionExercises extends BaseStatelessWidget<
    SessionsGetAllGymSessionExercisesController,
    SessionsGetAllGymSessionExercisesCubit,
    SessionsGetAllGymSessionExercisesState> {
  SessionsGetAllGymSessionExercises(
      {super.key,
      super.controller,
      super.onStateChanged,
      this.onGymSessionExerciseCreated});

  SessionsCreateGymSessionExerciseSetController
      sessionsCreateGymSessionExerciseSetController =
      SessionsCreateGymSessionExerciseSetController();
  SessionsGetAllGymSessionExerciseSetsController
      sessionsGetAllGymSessionExerciseSetsController =
      SessionsGetAllGymSessionExerciseSetsController();
  Function(dynamic)? onGymSessionExerciseCreated;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsGetAllGymSessionExercisesCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<SessionsGetAllGymSessionExercisesCubit,
          SessionsGetAllGymSessionExercisesState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getAllGymSessionExercisesResponse?.gymSessionExercises !=
                  null
              ? ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.getAllGymSessionExercisesResponse!
                      .gymSessionExercises!.length,
                  itemBuilder: (context, index) {
                    final gymSessionExercise = state
                        .getAllGymSessionExercisesResponse!
                        .gymSessionExercises![index];
                    return Container(
                      margin: edge_insets_t_12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(gymSessionExercise.exerciseId.toString()),
                          // SessionsGetAllGymSessionExerciseSets(
                          //   controller:
                          //       sessionsGetAllGymSessionExerciseSetsController,
                          // ),
                          Container(
                            margin: edge_insets_t_12,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children :[
                                  Container(
                                    width: MediaQuery.sizeOf(context).width/10,
                                    child: Text('Set',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: Fonts.f500,
                                          fontSize: Fonts.fontSize14
                                      ),),
                                  ),
                                  Container(
                                    width: MediaQuery.sizeOf(context).width/5,
                                    child: Text('Previous',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: Fonts.f500,
                                          fontSize: Fonts.fontSize14
                                      ),),
                                  ),
                                  Container(
                                    width: MediaQuery.sizeOf(context).width/5,
                                    child: Text('Kg',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: Fonts.f500,
                                          fontSize: Fonts.fontSize14
                                      ),),
                                  ),
                                  Container(
                                    width: MediaQuery.sizeOf(context).width/4,
                                    child: Text('Reps',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: Fonts.f500,
                                          fontSize: Fonts.fontSize14
                                      ),),
                                  ),
                                ]),
                          ),
                          SessionsGetGymSessionExerciseSetByGymSessionExercise(
                            gymSessionExercise: gymSessionExercise,
                          ),
                          SessionsCreateGymSessionExerciseSet(
                            gymSessionExercise: gymSessionExercise,
                            controller:
                                sessionsCreateGymSessionExerciseSetController,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: TextButton(
                                    onPressed: (state.getAllGymSessionExercisesStatus ==
                                        BooleanStatus.pending)
                                        ? null
                                        : () async {
                                      CreateGymSessionExerciseSetResponse
                                      createGymSessionExerciseSetResponse =
                                      await sessionsCreateGymSessionExerciseSetController
                                          .getChildCubit()
                                          .createGymSessionExercise(
                                          sessionsCreateGymSessionExerciseSetController
                                              .getChildCubit()
                                              .createRequestData(
                                              exerciseId:
                                              gymSessionExercise
                                                  .exerciseId,
                                              gymSessionExerciseId:
                                              gymSessionExercise
                                                  .id));
                                      if (onGymSessionExerciseCreated != null) {
                                        onGymSessionExerciseCreated!(
                                            createGymSessionExerciseSetResponse);
                                      }
                                    },
                                    child: Text("Add Set"),
                                  )
                              )
                            ],
                          ),
                          DottedLine()
                        ],
                      ),
                    );
                  })
              : const SizedBox();
        },
      ),
    );
  }

  @override
  SessionsGetAllGymSessionExercisesCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsGetAllGymSessionExercisesCubit cubit =
        SessionsGetAllGymSessionExercisesCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
