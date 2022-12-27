// File created by
// Dunica David-Gabriel <FLTY>
// on 27/12/2022 21:05:57

part of actions;

@freezed
class GetPlaceActivities with _$GetPlaceActivities implements AppAction {
  const factory GetPlaceActivities(int idplace, ActionResult result) = GetPlaceActivitiesStart;

  const factory GetPlaceActivities.successful(List<PlaceActivity> activities) = GetPlaceActivitiesSuccessful;

  @Implements<ErrorAction>()
  const factory GetPlaceActivities.error(Object error, StackTrace stackTrace) = GetPlaceActivitiesError;
}