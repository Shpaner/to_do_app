import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ListRepository{
  CollectionReference get getItemsRef =>
      FirebaseFirestore.instance.collection('items');

  void addNewItemToCollection(
      String category, String title, String note) {
    getItemsRef.add({
      'category': category,
      'title': title,
      'note': note,
    }).catchError((error) => print('Failed to add new item: $error'));
  }

  void removeItemFromCollection(String uniqueId) {
    getItemsRef
        .doc(uniqueId)
        .delete()
        .catchError((error) => print('Failed to delete: $error'));
  }

  void updateItem(String category, String title, String note, String uniqueId) {
    getItemsRef.doc(uniqueId).update({
      'category': category,
      'title': title,
      'note': note,
    }).catchError((error) => print('Failed to update document: $error'));
  }
}