import 'package:assignment_03/widgets/Categories_card.dart';
import 'package:assignment_03/data/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key, required this.DaTa});
  final List<Category> DaTa;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DaTa.length,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.only(right: 10),
          child: CategoriesCard(
            DaTa1: DaTa[index],
          ),
        ),
      ),
    );
  }
}
