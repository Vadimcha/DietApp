import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: 'Завтрак 1',
        iconPath: 'assets/Завтрак 1.svg',
        level: 'Middle',
        duration: '30mins',
        calorie: '180kCal',
        viewIsSelected: true,
        boxColor: const Color(0xff9DCEFF),
      ),
    );

    diets.add(
      DietModel(
        name: 'Завтрак 2',
        iconPath: 'assets/Завтрак 2.svg',
        level: 'Hard',
        duration: '1hour',
        calorie: '300kCal',
        viewIsSelected: false,
        boxColor: const Color(0xffEEA4CE),
      ),
    );

    diets.add(
      DietModel(
        name: 'Яичница',
        iconPath: 'assets/Яичница.svg',
        level: 'Easy',
        duration: '10mins',
        calorie: '100kCal',
        viewIsSelected: false,
        boxColor: const Color(0xffEEA4CE),
      ),
    );

    return diets;
  }
}
