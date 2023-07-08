import 'package:assignment_03/data/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.DaTa1,
  });
  final Category DaTa1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 13, 111, 16)),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                          "${DaTa1.primaryImage}",
                        ),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(DaTa1.name),
              const Text(","),
              const SizedBox(
                width: 10,
              ),
              Text(
                DaTa1.age.toString(),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 120,
                width: 260,
                // height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "${DaTa1.secondaryImage}",
                        ),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Flexible(
                child: Text(DaTa1.description),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text("House: "),
                      Text(DaTa1.house),
                    ],
                  ),
                  const Icon(
                    CupertinoIcons.heart,
                    color: Colors.red,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text("School: "),
                      Text(DaTa1.school),
                    ],
                  ),
                  Text(DaTa1.upvotes.toString()),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
