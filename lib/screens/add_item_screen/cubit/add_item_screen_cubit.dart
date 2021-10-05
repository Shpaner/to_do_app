import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/repositories/list_repository.dart';

part 'add_item_screen_state.dart';
part 'add_item_screen_cubit.freezed.dart';

class AddItemScreenCubit extends Cubit<AddItemScreenState> {
  final ListRepository _listRepository;
  AddItemScreenCubit(this._listRepository) : super(AddItemScreenState.init());

  void setCategory({required Category category}) {
    emit(state.copyWith(category: category));
  }

  void setTitle({required String text}) {
    emit(state.copyWith(title: text));
  }

  void setNote({required String text}) {
    emit(state.copyWith(note: text));
  }

  void addNewItem() {
     _listRepository.addNewItemToCollection(state.category.toString(), state.title, state.note);
  }
}