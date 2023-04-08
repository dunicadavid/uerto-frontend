// File created by
// Dunica David-Gabriel <FLTY>
// on 08/04/2023 11:52:39

part of actions;

@freezed
class SetRecommenderStrategy with _$SetRecommenderStrategy implements AppAction {
  const factory SetRecommenderStrategy(int strategy) = SetRecommenderStrategyStart;

  const factory SetRecommenderStrategy.successful(int strategy) = SetRecommenderStrategySuccessful;

  @Implements<ErrorAction>()
  const factory SetRecommenderStrategy.error(Object error, StackTrace stackTrace) = SetRecommenderStrategyError;
}