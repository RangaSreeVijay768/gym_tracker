import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'edge_insets.dart';
import 'borders.dart';

abstract class Buttons {
  static ButtonStyle primaryButton = TextButton.styleFrom(
      backgroundColor: AppColors.bgPrimary2,
      disabledBackgroundColor: AppColors.grey1,
      padding: edge_insets_y_16,
      shape: RoundedRectangleBorder(borderRadius: borderRadius.br_30)
  );
}
