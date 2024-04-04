import 'package:get_it/get_it.dart';
import 'package:initial_setup/features/auth/bloc/auth_bloc.dart';
import 'package:initial_setup/features/auth/domain/auth_repository.dart';

class Initializer {
  final serviceLocator = GetIt.instance;

  void initApp() {
    _initAuth();
  }

  void _initAuth() {
    serviceLocator.registerLazySingleton(
      () => AuthRepository(),
    );
    serviceLocator.registerFactory(
      () => AuthBloc(
        authRepository: serviceLocator<AuthRepository>(),
      ),
    );
  }
}
