import 'package:beebloom_gym_tracker/app/core/controllers/base_controller.dart';
import 'package:beebloom_gym_tracker/app/core/widgets/base_stateless_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class BaseScreenWidget<T extends BaseController, C extends BlocBase, S>
    extends BaseStatelessWidget<T, C, S> {
  final BuildContext pageContext;
  final GoRouterState goRouterState;

  const BaseScreenWidget(
      {required this.pageContext,
      required this.goRouterState,
      super.controller,
      super.key,
      super.onStateChanged});
}
