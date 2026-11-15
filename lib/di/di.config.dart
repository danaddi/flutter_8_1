// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter_8_1/bloc/patterns_bloc.dart' as _i954;
import 'package:flutter_8_1/data/pattern_database.dart' as _i306;
import 'package:flutter_8_1/data/patterns_repository.dart' as _i424;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i306.PatternDatabase>(() => _i306.PatternDatabase());
    gh.lazySingleton<_i424.PatternsRepository>(
      () => _i424.PatternsRepository(gh<_i306.PatternDatabase>()),
    );
    gh.factory<_i954.PatternsBloc>(
      () => _i954.PatternsBloc(gh<_i424.PatternsRepository>()),
    );
    return this;
  }
}
