enum BooleanStatusModel {
  active,
  pending,
  completed,
  rejected,
  closed,
  success,
  deleted,
  received,
  error,
  start,
  running;

  String toJson() => name;

  static BooleanStatusModel fromJson(String json) => values.byName(json);
}
