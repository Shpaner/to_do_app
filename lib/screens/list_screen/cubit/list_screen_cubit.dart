import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/repositories/list_repository.dart';

part 'list_screen_state.dart';
part 'list_screen_cubit.freezed.dart';

class ListScreenCubit extends Cubit<ListScreenState> {
  final ListRepository _listRepository;
  ListScreenCubit(this._listRepository) : super(ListScreenState.init());

  get collection => _listRepository.getItemsRef.snapshots();

  void removeItem(String uniqueId) {
    _listRepository.removeItemFromCollection(uniqueId);
  }
}