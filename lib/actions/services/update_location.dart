// File created by
// Dunica David-Gabriel <FLTY>
// on 18/03/2023 13:50:37

part of actions;

@freezed
class UpdateLocation with _$UpdateLocation implements AppAction {
  const factory UpdateLocation(LatLng location) = UpdateLocation$;
}