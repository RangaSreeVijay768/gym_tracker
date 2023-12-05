import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_exercise_sets_form/sessions_exercise_sets_form.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../entities/sessions/gym_session_exercise.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'sessions_get_gym_session_exercise_set_by_gym_session_exercise_controller.dart';
import 'sessions_get_gym_session_exercise_set_by_gym_session_exercise_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsGetGymSessionExerciseSetByGymSessionExercise
    extends BaseStatelessWidget<
        SessionsGetGymSessionExerciseSetByGymSessionExerciseController,
        SessionsGetGymSessionExerciseSetByGymSessionExerciseCubit,
        SessionsGetGymSessionExerciseSetByGymSessionExerciseState> {
  GymSessionExercise gymSessionExercise;

  SessionsGetGymSessionExerciseSetByGymSessionExercise(
      {Key? key,
      super.controller,
      super.onStateChanged,
      required this.gymSessionExercise})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<
        SessionsGetGymSessionExerciseSetByGymSessionExerciseCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          SessionsGetGymSessionExerciseSetByGymSessionExerciseCubit,
          SessionsGetGymSessionExerciseSetByGymSessionExerciseState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getGymSessionExerciseSetModelsByGymSessionExerciseModelResponse !=
                  null
              ? Container(
            margin: edge_insets_t_16,
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children :[
                    Container(
                      width: MediaQuery.sizeOf(context).width/10,
                      child: Text("1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.textHeading
                      ),),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width/6,
                      child: Text("--",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.textHeading
                      ),),
                    ),
                    SessionsExerciseSetsForm(),
                    Container(
                      padding: edge_insets_x_8,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.check)
                      ),
                    ),
                  ]),
                ]
            ),
          )
              : SizedBox();
        },
      ),
    );
  }

  @override
  SessionsGetGymSessionExerciseSetByGymSessionExerciseCubit
      createCubitAndAssignToController(BuildContext context) {
    SessionsGetGymSessionExerciseSetByGymSessionExerciseCubit cubit =
        SessionsGetGymSessionExerciseSetByGymSessionExerciseCubit(
            context: context, gymSessionExercise: gymSessionExercise);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
