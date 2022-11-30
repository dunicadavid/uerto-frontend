// File created by
// Dunica David-Gabriel <FLTY>
// on 27/11/2022 17:41:12

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../data/user_api.dart';
import '../epics/epics.dart';
import '../firebase_options.dart';
import '../models/index.dart';
import '../reducer/reducer.dart';

Future<Store<AppState>> init() async {

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final FirebaseAuth auth = FirebaseAuth.instance;

  ///verify auth token

  final AuthApi authApi = AuthApi(auth: auth);
  final UserApi userApi = UserApi();

  final AppEpics epics = AppEpics(
    authApi: authApi,
    userApi: userApi,
  );

  return Store<AppState>(
    reducer,
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epics),
    ],
  )..dispatch(const InitializeApp());
}
