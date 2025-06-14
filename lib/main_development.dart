import 'app.dart';
import 'utils/enums/environment.dart';

Future<void> main() async {
  await mainApp(envFile: '.env.development', environment: Environment.dev);
}
