import 'package:beebloom_gym_tracker/app/core/database/boolean_status.dart';
import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_create_exercise_form/exercises_create_exercise_form.dart';
import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_create_exercise_form/exercises_create_exercise_form_controller.dart';
import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_get_all_exercises/exercises_get_all_exercises_controller.dart';
import 'package:beebloom_gym_tracker/app/exercises/widgets/exercises_search_exercise_form/exercises_search_exercise_form.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:beebloom_gym_tracker/app/tracker/screens/tracker_premium_screen/tracker_premium_screen.dart';
import 'package:beebloom_gym_tracker/app/tracker/widgets/tracker_create_exercise_modal/tracker_create_exercise_modal.dart';
import 'package:beebloom_gym_tracker/app/tracker/widgets/tracker_create_exercise_modal/tracker_create_exercise_modal_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../exercises/widgets/exercises_get_all_exercises/exercises_get_all_exercises.dart';
import '../../../sessions/widgets/sessions_get_all_gym_session_exercise_sets/sessions_get_all_gym_session_exercise_sets.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/borders.dart';
import '../../../themes/shadows.dart';
import 'tracker_exercises_screen_controller.dart';
import 'tracker_exercises_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerExercisesScreen extends BaseStatelessWidget<
    TrackerExercisesScreenController,
    TrackerExercisesScreenCubit,
    TrackerExercisesScreenState> {
  // UserAccount userAccount;
  TrackerExercisesScreen({super.key, super.controller, super.onStateChanged});
  TrackerCreateExerciseModalController trackerCreateExerciseModalController =
      TrackerCreateExerciseModalController();
  ExercisesGetAllExercisesController exercisesGetAllExercisesController =
      ExercisesGetAllExercisesController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerExercisesScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerExercisesScreenCubit,
          TrackerExercisesScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exercise", style: TextStyle(
                    fontWeight: Fonts.f700,
                    fontSize: Fonts.fontSize24
                  ),),
                ],
              ),
            ),
            body: SingleChildScrollView(
              padding: edge_insets_y_24,
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TrackerPremiumScreen()));
                      },
                      child: Text("Premium")
                  ),
                  Container(
                    margin: edge_insets_x_16,
                    child: ExercisesSearchExerciseForm(),
                  ),
                  SizedBox(height: 20,),
                  TrackerCreateExerciseModal(
                    onModalClosed: (modalData) {
                      if (modalData.status == BooleanStatus.success) {
                        exercisesGetAllExercisesController
                            .getChildCubit()
                            .getAllExercises(exercisesGetAllExercisesController
                            .getChildCubit()
                            .createRequestData());
                      }
                    },
                  ),
                  SizedBox(height: 36),
                  Container(
                    padding: edge_insets_y_12,
                    margin: edge_insets_x_16,
                    decoration: BoxDecoration(
                      boxShadow: [shadows.bs_primary],
                      color: AppColors.white,
                      borderRadius: borderRadius.br_10
                    ),
                    child: ExercisesGetAllExercises(
                      controller: exercisesGetAllExercisesController,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerExercisesScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerExercisesScreenCubit cubit =
        TrackerExercisesScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
