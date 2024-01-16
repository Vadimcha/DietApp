import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    categories.add(CategoryModel(
      name: 'Семечки',
      iconPath: 'assets/Семечки.svg',
      boxColor: const Color(0xff92A3FD),
    ));
    categories.add(CategoryModel(
      name: 'Завтрак 1',
      iconPath: 'assets/Завтрак 1.svg',
      boxColor: const Color(0xffc588f2),
    ));
    categories.add(CategoryModel(
      name: 'Завтрак 2',
      iconPath: 'assets/Завтрак 2.svg',
      boxColor: const Color(0xff92A3FD),
    ));
    categories.add(CategoryModel(
      name: 'Яичница',
      iconPath: 'assets/Яичница.svg',
      boxColor: const Color(0xffc588f2),
    ));
    return categories;
  }
}
