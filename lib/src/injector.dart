import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> init() async {
  // DB

  // // bloc
  // injector.registerFactory(() => SpaceXLaunchBloc(injector()));

  // // usecase
  // injector.registerLazySingleton(() => SpaceXLaunch(injector()));

  // // repository

  // injector.registerLazySingleton<SpaceXRepository>(
  //   () => SpaceXRemoteDataSourceImpl(remoteDataSource: injector()),
  // );

  // // data source
  // injector.registerLazySingleton<SpaceXRemoteDataSource>(
  //     () => SpaceXRemoteDataSourceImp(injector()));

  // //network
  // injector.registerLazySingleton(() => NetworkManager());

  await dotenv.load(fileName: '.env');
}
// space_x_latest_launch