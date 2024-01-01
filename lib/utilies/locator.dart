import 'package:get_it/get_it.dart';

import 'counterservice.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => CounterService());
}