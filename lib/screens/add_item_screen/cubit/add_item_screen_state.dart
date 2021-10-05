part of 'add_item_screen_cubit.dart';

@freezed
class AddItemScreenState with _$AddItemScreenState {
  const factory AddItemScreenState({
    required Category category,
    required String title,
    required String note,
  }) = _AddItemScreenState;

  const AddItemScreenState._();

  factory AddItemScreenState.init() => const AddItemScreenState(
    category: Category.shop,
    title: '',
    note: '',
  );
}

enum Category {study, sport, work, shop}