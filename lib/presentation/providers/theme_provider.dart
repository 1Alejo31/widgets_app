import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => true);

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);
