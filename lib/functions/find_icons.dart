import 'package:flutter/material.dart';
import 'package:to_do_app/screens/add_item_screen/cubit/add_item_screen_cubit.dart';

IconData categoryIcon(String icon) {
  if (icon == Category.shop.toString()) {
    return Icons.shopping_cart_outlined;
  }

  if (icon == Category.sport.toString()) {
    return Icons.sports_football_outlined;
  }

  if (icon == Category.study.toString()) {
    return Icons.book_outlined;
  }

  return Icons.computer_outlined;
}