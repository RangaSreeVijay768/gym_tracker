import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../entities/sessions/gym_session.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import '/app/core/modals/base_modal/base_modal_widget.dart';
import 'tracker_create_new_gym_session_modal_content/tracker_create_new_gym_session_modal_content.dart';
import 'tracker_create_new_gym_session_modal_controller.dart';
import 'tracker_create_new_gym_session_modal_cubit.dart';
import 'tracker_create_new_gym_session_modal_data.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerCreateNewGymSessionModal
    extends BaseModalWidget<
        TrackerCreateNewGymSessionModalController,
        TrackerCreateNewGymSessionModalCubit,
        TrackerCreateNewGymSessionModalState,
        TrackerCreateNewGymSessionModalData> {
  GymSession? gymSession;

  TrackerCreateNewGymSessionModal(
      {Key? key, super.controller, super.onStateChanged, super.onModalClosed, this.gymSession})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerCreateNewGymSessionModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerCreateNewGymSessionModalCubit,
          TrackerCreateNewGymSessionModalState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
          if(state.openModal!=null && state.openModal!){
            gymSession=state.gymSession;
            openModal(context: context, cubit: getCubit(context));
            getCubit(context).emit(state.copyWith(openModal: false));
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

  @override
  TrackerCreateNewGymSessionModalCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerCreateNewGymSessionModalCubit cubit = TrackerCreateNewGymSessionModalCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return TrackerCreateNewGymSessionModalContent(gymSession: gymSession!,);
  }
}
