import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  StaggerGridExample(),
    );
  }
}

class StaggerGridExample extends StatefulWidget {
  const StaggerGridExample({super.key});

  @override
  State<StaggerGridExample> createState() => _StaggerGridExampleState();
}

class Cat {
  String catName;
  String catType;
  String catDescription;

  Cat({required this.catName, required this.catType, required this.catDescription});

}

class _StaggerGridExampleState extends State<StaggerGridExample> {
  List<Cat> catsList = [Cat(catName: 'Whiskers', catType: 'Mittens', catDescription: 'A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.'),Cat(catName: 'Fluffy', catType: 'Fluffy', catDescription: 'A playful and friendly cat'),Cat(catName: 'Persian', catType: 'Persian', catDescription: 'Loves to cuddle and nap.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful'),Cat(catName: 'Bengal', catType: 'Bengal', catDescription: 'Adventurous and curious.Adventurous and curious.'), Cat(catName: 'Luna', catType: 'Luna', catDescription: 'Mischievous and clever.'),Cat(catName: 'Whiskers', catType: 'Mittens', catDescription: 'A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.'),Cat(catName: 'Fluffy', catType: 'Fluffy', catDescription: 'A playful and friendly cat'),Cat(catName: 'Persian', catType: 'Persian', catDescription: 'Loves to cuddle and nap.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful'),Cat(catName: 'Bengal', catType: 'Bengal', catDescription: 'Adventurous and curious.Adventurous and curious.'), Cat(catName: 'Luna', catType: 'Luna', catDescription: 'Mischievous and clever.'),];

  @override
  void initState() {
  //  generateRandomCats(20);
    super.initState();
  }

  /*List<Cat> generateRandomCats(int numberOfCats) {
    Random random = Random();
    List<String> catNames = ['Whiskers', 'Mittens', 'Fluffy', 'Shadow', 'Tigger', 'Smokey', 'Oreo', 'Luna', 'Simba', 'Milo', 'Chloe', 'Ziggy', 'Ginger', 'Max', 'Bella', 'Loki', 'Lucy', 'Mittens', 'Cleo', 'Felix'];
    List<String> catTypes = ['Tabby', 'Siamese', 'Persian', 'Maine Coon', 'Ragdoll', 'Bengal', 'Sphynx', 'Russian Blue', 'Scottish Fold', 'Norwegian Forest'];
    List<String> catDescriptions = [
      'A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.',
      'Loves to cuddle and nap.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.',
      'Enjoys exploring the outdoors.',
      'Likes to chase laser pointers.',
      'Very talkative and expressive.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.A playful and friendly cat.',
      'Has a soft and fluffy coat.',
      'Adventurous and curious.Adventurous and curious.',
      'A calm and elegant cat.',
      'Mischievous and clever.'
    ];

    for (int i = 0; i < numberOfCats; i++) {
      String randomName = catNames[random.nextInt(catNames.length)];
      String randomType = catTypes[random.nextInt(catTypes.length)];
      String randomDescription = catDescriptions[random.nextInt(catDescriptions.length)];

      Cat cat = Cat(catName: randomName, catType: randomType, catDescription: randomDescription);
      catsList.add(cat);
    }

    return catsList;
  }*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stagger Grid Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(6),
        child: AlignedGridView.count(
          itemCount: catsList.length,
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      catsList[index].catName, // Display cat's name
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      catsList[index].catDescription, // Display cat's description
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),

            );
          },
        )
      ),
    );
  }
}




