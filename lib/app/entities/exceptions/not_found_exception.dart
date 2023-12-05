import 'package:beebloom_gym_tracker/app/entities/exceptions/base_exception.dart';

class NotFoundException extends BaseException {
  const NotFoundException({super.message, super.source});
}
