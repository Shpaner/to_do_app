import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/components/to_do_list_view.dart';
import 'package:to_do_app/config/injection/injection.dart';
import 'package:to_do_app/screens/add_item_screen/add_item_screen.dart';
import 'cubit/list_screen_cubit.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late final ListScreenCubit _cubit;

  @override
  void initState() {
    _cubit = ListScreenCubit(getIt.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To Do List')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemScreen())),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: StreamBuilder<QuerySnapshot>(
              stream: _cubit.collection,
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return const Text('Something went wrong');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if(snapshot.hasData && snapshot.data!.docs.isEmpty) {
                  return const Text("no data");
                }

                return ToDoListView(snapshot, _cubit);
              }),
        ),
      ),
    );
  }
}