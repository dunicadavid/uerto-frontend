// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:00:00

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../data/user_api.dart';
import '../models/index.dart';

class AppEpics {
  const AppEpics({required AuthApi authApi,required UserApi userApi})
      : _authApi = authApi,
        _userApi = userApi;

  final AuthApi _authApi;
  final UserApi _userApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
    ]);
  }


}