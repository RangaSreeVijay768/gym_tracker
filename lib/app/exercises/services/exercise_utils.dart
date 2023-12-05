import 'package:beebloom_gym_tracker/app/exercises/services/models/create_workout_template_model/create_workout_template_workout_model_item.dart';

class ExerciseUtils {
  static String getRandomUserAccountId() {
    return 'y9cYhVBgXvRhUcAzapgB';
  }

  static CreateWorkoutTemplateWorkoutModelItem
      getRandomCreateWorkoutTemplateWorkoutModelItem() {
    return CreateWorkoutTemplateWorkoutModelItem(
        exerciseModelId: '0p8Hkaobp6TZ0nSBH0wd',
        volume: 25,
        order: 1,
        units: 'kgs');
  }
}
