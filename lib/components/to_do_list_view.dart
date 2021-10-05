import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/functions/find_icons.dart';
import 'package:to_do_app/screens/list_screen/cubit/list_screen_cubit.dart';
import 'dismissible_background.dart';
import 'note_preview.dart';

ListView ToDoListView(AsyncSnapshot<QuerySnapshot<Object?>> snapshot, ListScreenCubit cubit) {
  return ListView.builder(
    itemCount: snapshot.data!.docs.length,
    itemBuilder: (context, index) {
      DocumentSnapshot doc = snapshot.data!.docs[index];
      return Dismissible(
        key: UniqueKey(),
        confirmDismiss: (direction) async {
          cubit.removeItem(doc.id);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                  '${doc['title']} dismissed')));
          return true;
        },
        background: const DismissBackground(),
        secondaryBackground: const DismissBackground(isPrimaryBackground: false),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => NotePreview(
                  title: doc['title'], note: doc['note'],
                  icon: categoryIcon(doc['category'])),
            ),
            title: Text(
              '${doc['title']}',
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
            tileColor: Colors.grey[800],
            trailing: Icon(
              categoryIcon(doc['category']),
              size: 25.0,
              color: Colors.blueAccent,
            ),
          ),
        ),
      );
    },
  );
}
