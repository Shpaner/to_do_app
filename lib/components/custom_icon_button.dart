import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/screens/add_item_screen/cubit/add_item_screen_cubit.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.category,
    required this.chosenCategory,
    required this.cubit,
    Key? key,
  }) : super(key: key);
  final Category category;
  final Category chosenCategory;
  final AddItemScreenCubit cubit;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(getIcon(category)),
      iconSize: 26.0,
      color: category == chosenCategory ? Colors.blueAccent : Colors.grey,
      onPressed: () => cubit.setCategory(category: category),
    );
  }

  IconData getIcon(Category category) {
    if (category == Category.study) return Icons.book_outlined;
    if (category == Category.shop) return Icons.shopping_cart_outlined;
    if (category == Category.sport) return Icons.sports_football_outlined;
    return Icons.computer_outlined;
  }
}