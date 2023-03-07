library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uerto/models/index.dart';


part 'index.freezed.dart';
part 'auth/initialize_app.dart';
part 'auth/register_phase1.dart';
part 'auth/register_phase2.dart';
part 'auth/edit_profile.dart';
part 'auth/reset_password.dart';
part 'auth/email_verify.dart';
part 'auth/login.dart';
part 'auth/signout.dart';

part 'places/get_places.dart';
part 'places/get_place_details.dart';
part 'places/get_place_activities.dart';
part 'places/get_place_activity_availability.dart';
part 'places/delete_places.dart';
part 'places/delete_place_activities.dart';

part 'reservations/create_reservation.dart';
part 'reservations/get_reservations_future.dart';
part 'reservations/get_reservations_previous.dart';
part 'reservations/delete_reservations_future.dart';
part 'reservations/delete_reservations_previous.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
