library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uerto/models/index.dart';


part 'index.freezed.dart';

part 'services/verify_location_service.dart';
part 'services/get_current_location.dart';
part 'services/update_location.dart';

part 'auth/initialize_app.dart';
part 'auth/register_phase1.dart';
part 'auth/register_phase2.dart';
part 'auth/edit_profile.dart';
part 'auth/reset_password.dart';
part 'auth/email_verify.dart';
part 'auth/login.dart';
part 'auth/signout.dart';

part 'places/filters/set_places_category.dart';
part 'places/filters/set_places_filters.dart';
part 'places/filters/set_places_sortedBy.dart';
part 'places/filters/delete_places_filters.dart';
part 'places/filters/delete_places_sortedBy.dart';
part 'places/filters/remove_places_filters.dart';

part 'places/recommendersys/get_recommended_places.dart';

part 'places/get_places.dart';
part 'places/get_places_searched.dart';
part 'places/get_places_searched_all.dart';
part 'places/get_places_favourite.dart';
part 'places/get_place_details.dart';
part 'places/get_place_activities.dart';
part 'places/get_place_activity_availability.dart';
part 'places/delete_places.dart';
part 'places/delete_places_searched.dart';
part 'places/delete_place_activities.dart';
part 'places/set_place_favourite.dart';

part 'reservations/create_reservation.dart';
part 'reservations/delete_reservation.dart';
part 'reservations/get_reservations_future.dart';
part 'reservations/get_reservations_previous.dart';
part 'reservations/delete_reservations_future.dart';
part 'reservations/delete_reservations_previous.dart';
part 'reservations/get_reservations_rate_request.dart';
part 'reservations/set_reservation_rating.dart';
part 'reservations/delete_reservation_rating.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);
