library actions;

import 'package:freezed_annotation/freezed_annotation.dart';


part 'index.freezed.dart';
part 'initialize_app.dart';



abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
