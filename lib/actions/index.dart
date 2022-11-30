library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uerto/models/index.dart';


part 'index.freezed.dart';
part 'auth/initialize_app.dart';
part 'auth/register.dart';
part 'auth/login.dart';
part 'auth/signout.dart';



abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
