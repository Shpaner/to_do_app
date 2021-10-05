import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/components/custom_icon_button.dart';
import 'package:to_do_app/config/injection/injection.dart';
import 'cubit/add_item_screen_cubit.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({Key? key}) : super(key: key);

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  late final AddItemScreenCubit _cubit;
  
  @override
  void initState() {
    _cubit = AddItemScreenCubit(getIt.get());
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
          title: const Text('Add New Task')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save_alt),
        onPressed: () {
          _cubit.addNewItem();
          Navigator.pop(context);
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: BlocBuilder<AddItemScreenCubit, AddItemScreenState>(
            bloc: _cubit,
            builder: (context, state) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(category: Category.shop, cubit: _cubit, chosenCategory: state.category),
                        CustomIconButton(category: Category.sport, cubit: _cubit, chosenCategory: state.category),
                        CustomIconButton(category: Category.work, cubit: _cubit, chosenCategory: state.category),
                        CustomIconButton(category: Category.study, cubit: _cubit, chosenCategory: state.category),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Text('Choose your task type.'),
                  ],
                ),
                const SizedBox(height: 20.0),
                TextField(
                  onChanged: (text) => _cubit.setTitle(text: text),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Title.',
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  onChanged: (text) => _cubit.setNote(text: text),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Additional Task description.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}