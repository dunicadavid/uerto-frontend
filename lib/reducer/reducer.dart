// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 18:01:40

import 'package:built_collection/built_collection.dart';
import '../actions/index.dart';
import 'package:redux/redux.dart';
import '../models/index.dart';


Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
      (AppState state, dynamic action) {
    print(action);
    return state;
  },

  TypedReducer<AppState, InitializeAppSuccessful>(_initializeAppSuccessful),

]);

AppState _initializeAppSuccessful(AppState state, InitializeAppSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    ///user
  });
}

