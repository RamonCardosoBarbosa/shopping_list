import 'package:get_it/get_it.dart';
import 'package:network/network.dart';

class ServiceLocator {
  static GetIt get instance => GetIt.instance;

  static void setup() {
    instance.registerLazySingleton<NetworkService>(
      () => NetworkService.getClient(
        baseUrl: 'https://www.googleapis.com/books/v1/',
      ),
    );
  }
}
