import 'package:get_it/get_it.dart';
import 'package:payment/core/api_service/api_service.dart';

  final getIt = GetIt.instance;

   void setup() {
    final getIt = GetIt.instance;

    // Registering the ApiService
    getIt.registerLazySingleton(() => ApiService());
  }

