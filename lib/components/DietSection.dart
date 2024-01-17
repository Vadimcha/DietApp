import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/diet_model.dart';

class DietSection extends StatelessWidget {
  DietSection({super.key});

  List<DietModel> diets = [];
  void _getDiets() {
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getDiets();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Recommendation\nfor Diet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 240,
          child: ListView.separated(
            itemBuilder: (content, index) => Container(
              width: 210,
              decoration: BoxDecoration(
                color: diets[index].boxColor.withOpacity(.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    diets[index].iconPath,
                    width: 100,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Text(
                        diets[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}',
                        style: const TextStyle(
                          color: Color(0xff7b6f72),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 135,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          (diets[index].viewIsSelected
                              ? const Color(0xff9dceff)
                              : Colors.transparent),
                          (diets[index].viewIsSelected
                              ? const Color(0xff92a3fd)
                              : Colors.transparent),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'View',
                        style: TextStyle(
                          color: diets[index].viewIsSelected
                              ? Colors.white
                              : const Color(0xffc58bf2),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            separatorBuilder: (content, index) => const SizedBox(width: 25),
            itemCount: diets.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
          ),
        ),
      ],
    );
  }
}
