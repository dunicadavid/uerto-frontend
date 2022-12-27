library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uerto/models/index.dart';


part 'index.freezed.dart';
part 'auth/initialize_app.dart';
part 'auth/register_phase1.dart';
part 'auth/register_phase2.dart';
part 'auth/email_verify.dart';
part 'auth/login.dart';
part 'auth/signout.dart';

part 'places/get_places.dart';
part 'places/get_place_details.dart';
part 'places/get_place_activities.dart';
part 'places/delete_places.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
