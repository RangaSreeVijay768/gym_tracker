import 'package:beebloom_gym_tracker/app/core/widgets/core_image_picker/core_image_picker.dart';
import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'tracker_profile_screen_controller.dart';
import 'tracker_profile_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerProfileScreen
    extends BaseStatelessWidget<
        TrackerProfileScreenController,
        TrackerProfileScreenCubit,
        TrackerProfileScreenState> {

  TrackerProfileScreen({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerProfileScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerProfileScreenCubit, TrackerProfileScreenState>(
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
                  Text("Profile"),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.settings)
                  )
                ],
              ),
            ),
            body: Container(
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      width: 60,
                      child: CircleAvatar(
                        backgroundColor: AppColors.grey4,
                        radius: 50,
                        child: CoreImagePicker(),
                      ),
                    ),
                    title: Text("Ranga", style: TextStyle(
                      fontWeight: Fonts.f500
                    ),),
                    subtitle: Text("2 workouts"),
                  ),
                  Container(
                    padding: edge_insets_16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dashboard", style: TextStyle(
                            fontWeight: Fonts.f700,
                            fontSize: Fonts.fontSize18
                        ),),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.add)
                        )
                      ],
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
  TrackerProfileScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerProfileScreenCubit cubit = TrackerProfileScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
