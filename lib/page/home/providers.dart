import '../../xephas_exporter.dart';
import 'controller/home_controller.dart';

final homeProvider =
    Provider<HomeController>((ref) => HomeController(ref.read));
