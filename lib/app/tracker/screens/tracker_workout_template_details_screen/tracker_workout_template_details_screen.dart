import 'package:avatars/avatars.dart';
import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/buttons.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'tracker_workout_template_details_screen_controller.dart';
import 'tracker_workout_template_details_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerWorkoutTemplateDetailsScreen
    extends BaseStatelessWidget<
        TrackerWorkoutTemplateDetailsScreenController,
        TrackerWorkoutTemplateDetailsScreenCubit,
        TrackerWorkoutTemplateDetailsScreenState> {

  const TrackerWorkoutTemplateDetailsScreen(
      {super.key, super.controller, super.onStateChanged});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerWorkoutTemplateDetailsScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerWorkoutTemplateDetailsScreenCubit,
          TrackerWorkoutTemplateDetailsScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("Legs", style: TextStyle(
                  fontWeight: Fonts.f600,
                  fontSize: Fonts.fontSize22
              ),),
            ),
            body: SingleChildScrollView(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Avatar(
                        name: '3 x Squat (Barbell)',
                        shape: AvatarShape.circle(25),
                      ),
                      title: Text('3 x Squat (Barbell)'),
                      subtitle:
                      Text('Legs'),
                    );
                  }),
            ),
            bottomNavigationBar: Container(
              height: 100,
              child: Row(
                children: [
                  SizedBox(width: 32,),
                  Expanded(child: TextButton(
                      style: Buttons.primaryButton,
                      onPressed: (){},
                      child: Text("Start Workout", style: TextStyle(
                          fontSize: Fonts.fontSize18,
                          fontWeight: Fonts.f500,
                          color: AppColors.white
                      ),)
                  )),
                  SizedBox(width: 32,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerWorkoutTemplateDetailsScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerWorkoutTemplateDetailsScreenCubit cubit = TrackerWorkoutTemplateDetailsScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
