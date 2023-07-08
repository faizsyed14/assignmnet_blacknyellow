import 'package:assignment_03/Screens/ProfileScreen.dart';
import 'package:assignment_03/widgets/Events.dart';
import 'package:assignment_03/widgets/categories.dart';
import 'package:flutter/material.dart';
import 'package:assignment_03/data/category.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Category> _listCategories = [
    Category(
        age: 9,
        description:
            "Witness the Unforgettable : Behold the mesmerising Dance moves that stole the spotlight In our recent dance",
        house: "Pegasus",
        primaryImage: "assets/images/image5.jpg",
        secondaryImage: "assets/images/image6.jpg",
        name: "Ariya Pratap",
        school: "Mountain high",
        upvotes: 23),
    Category(
        age: 9,
        description:
            "Witness the Unforgettable : Behold the mesmerising Dance moves that stole the spotlight In our recent dance",
        house: "Pegasus",
        primaryImage: "assets/images/image5.jpg",
        secondaryImage: "assets/images/image6.jpg",
        name: "Ariya Pratap",
        school: "Mountain high",
        upvotes: 23),
    Category(
        age: 9,
        description:
            "Witness the Unforgettable : Behold the mesmerising Dance moves that stole the spotlight In our recent dance",
        house: "Pegasus",
        primaryImage: "assets/images/image5.jpg",
        secondaryImage: "assets/images/image6.jpg",
        name: "Ariya Pratap",
        school: "Mountain high",
        upvotes: 23),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //for inspiration Slider
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hello Aryan!",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        final snackBar = SnackBar(
                          content: const Text('Profile Screen'),
                          backgroundColor: (Colors.black12),
                          action: SnackBarAction(
                            label: 'dismiss',
                            onPressed: () {},
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/image4.jpg")),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 41, 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      iconColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.white),
                      label: Text("Search Competition"),
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      "Inspiration",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text("View the recent top preformances"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Categories(
            DaTa: _listCategories,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: const Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Attention!",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Put your socks for upcoming competitions",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Events(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
