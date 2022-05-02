import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:secret_hitler/di/get_it.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);