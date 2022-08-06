// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../feature/home/data/home_repository.dart' as _i4;
import '../feature/home/domain/home_usecase.dart' as _i5;
import '../feature/home/presentation/home_cubit.dart' as _i8;
import '../feature/login/data/login_repository.dart' as _i6;
import '../feature/login/domain/login_usecase.dart' as _i7;
import '../feature/login/presentation/login_cubit.dart' as _i9;
import '../network/network_module.dart' as _i10;
import '../network/network_service.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.factory<_i3.NetworkService>(() => networkModule.networkService);
  gh.factory<_i4.HomeRepository>(
      () => _i4.HomeRepositoryImpl(get<_i3.NetworkService>()));
  gh.factory<_i5.HomeUseCase>(
      () => _i5.HomeUseCaseImpl(get<_i4.HomeRepository>()));
  gh.factory<_i6.LoginRepository>(
      () => _i6.LoginRepositoryImpl(get<_i3.NetworkService>()));
  gh.factory<_i7.LoginUseCase>(
      () => _i7.LoginUseCaseImpl(get<_i6.LoginRepository>()));
  gh.factory<_i8.HomeCubit>(() => _i8.HomeCubit(get<_i5.HomeUseCase>()));
  gh.factory<_i9.LoginCubit>(() => _i9.LoginCubit(get<_i7.LoginUseCase>()));
  return get;
}

class _$NetworkModule extends _i10.NetworkModule {}
