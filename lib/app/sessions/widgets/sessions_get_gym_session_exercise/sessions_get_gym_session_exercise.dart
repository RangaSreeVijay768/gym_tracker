import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/entities/sessions/gym_session_exercise.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'sessions_get_gym_session_exercise_controller.dart';
import 'sessions_get_gym_session_exercise_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsGetGymSessionExercise
    extends BaseStatelessWidget<
        SessionsGetGymSessionExerciseController,
        SessionsGetGymSessionExerciseCubit,
        SessionsGetGymSessionExerciseState> {
  Exercise exercise;

  SessionsGetGymSessionExercise(
      {super.key, super.controller, super.onStateChanged, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsGetGymSessionExerciseCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          SessionsGetGymSessionExerciseCubit,
          SessionsGetGymSessionExerciseState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getGymSessionExerciseResponse?.gymSessionExercise != null
          ? Container(
            child: Text(state.getGymSessionExerciseResponse!.gymSessionExercise!.exercise!.exerciseName.toString()),
          )
          : Container(
            margin: edge_insets_t_16,
            child: Table(
                children: [
                  TableRow(children :[
                    Text('     Set', style: TextStyle(
                      fontWeight: Fonts.f500,
                      fontSize: Fonts.fontSize14
                    ),),
                    Text('  Previous', style: TextStyle(
                        fontWeight: Fonts.f500,
                        fontSize: Fonts.fontSize14
                    ),),
                    Text('  Kg', style: TextStyle(
                        fontWeight: Fonts.f500,
                        fontSize: Fonts.fontSize14
                    ),),
                    Text('  Reps', style: TextStyle(
                        fontWeight: Fonts.f500,
                        fontSize: Fonts.fontSize14
                    ),),
                    Text('  ', style: TextStyle(
                        fontWeight: Fonts.f500,
                        fontSize: Fonts.fontSize14
                    ),),
                  ]),
                  TableRow(children :[
                    Text(' '),
                    Text(' '),
                    Text(' '),
                    Text(' '),
                    Text(' '),
                  ]),
                  TableRow(children :[
                    Container(
                      child: Row(
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: edge_insets_0
                            ),
                              onPressed: (){},
                              child: Text("1", style: TextStyle(
                                color: AppColors.textHeading
                              ),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                  padding: edge_insets_0
                              ),
                              onPressed: (){},
                              child: Text("--", style: TextStyle(
                                  color: AppColors.textHeading
                              ),)
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: edge_insets_r_8,
                      width: 10,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.grey4,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: borderRadius.br_10,
                              borderSide: BorderSide(
                                color: AppColors.transparent,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: borderRadius.br_10,
                              borderSide:
                              BorderSide(color: AppColors.transparent)),
                        ),
                      ),
                    ),
                    Container(
                      margin: edge_insets_r_8,
                      width: 10,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.grey4,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: borderRadius.br_10,
                              borderSide: BorderSide(
                                color: AppColors.transparent,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: borderRadius.br_10,
                              borderSide:
                              BorderSide(color: AppColors.transparent)),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.check)
                    ),
                  ]),
                ]
            ),
          );
        },
      ),
    );
  }

  @override
  SessionsGetGymSessionExerciseCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsGetGymSessionExerciseCubit cubit = SessionsGetGymSessionExerciseCubit(
        context: context, exercise: exercise);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
