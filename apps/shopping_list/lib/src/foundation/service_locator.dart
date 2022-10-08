import 'package:get_it/get_it.dart';
import 'package:network/network.dart';

class ServiceLocator {
  static get instance => GetIt.instance;

  static void setup() {
    instance.registerLazySingleton(() => NetworkService.getClient());
  }
}
