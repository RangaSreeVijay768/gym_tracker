import 'package:flutter_bloc/flutter_bloc.dart';
import '/app/core/controllers/base_controller.dart';
import '/app/core/widgets/base_stateless_widget.dart';

abstract class BaseFormStatelessWidget<T extends BaseController,
    C extends BlocBase, S> extends BaseStatelessWidget<T, C, S> {
  BaseFormStatelessWidget({super.controller, super.key, super.onStateChanged});
}
