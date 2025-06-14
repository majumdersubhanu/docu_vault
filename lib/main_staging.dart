import 'app.dart';
import 'utils/enums/environment.dart';

Future<void> main() async {
  await init(environment: Environment.staging);
}
