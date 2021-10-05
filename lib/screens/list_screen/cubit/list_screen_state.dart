part of 'list_screen_cubit.dart';

@freezed
class ListScreenState with _$ListScreenState {
  const factory ListScreenState({
    required bool isLoading,
  }) = _ListScreenState;

  const ListScreenState._();

  factory ListScreenState.init() => const ListScreenState(
    isLoading: true,
  );
}