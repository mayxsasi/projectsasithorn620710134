import 'package:cafesasii/models/food_details.dart';
import 'package:cafesasii/models/food_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  var items = [
    FoodItem(
      id: 1,
      name: 'ESPRESSO',
      price: 50,
      image: '1.jpg' ,
    ),
    FoodItem(
      id: 2,
      name: 'CAPUCCINO',
      price: 65,
      image: '2.jpg',
    ),
    FoodItem(
      id: 3,
      name: 'MOCCA',
      price: 60,
      image: '3.jpg',
    ),
    FoodItem(
      id: 4,
      name: 'LEMON TEA',
      price: 50,
      image: '4.jpg',
    ),
    FoodItem(
      id: 5,
      name: 'MILK GREEN TEA',
      price: 45,
      image: '5.jpg',
    ),
    FoodItem(
      id: 6,
      name: 'THAITEA',
      price: 45,
      image: '6.jpg',
    ),
    FoodItem(
      id: 7,
      name: 'STRAWBERRY FRESH MILK',
      price: 35,
      image: '7.jpg',
    ),
    FoodItem(
      id: 8,
      name: 'PINK MILK',
      price: 45,
      image: '8.jpg',
    ),
    FoodItem(
      id: 9,
      name: 'COCOA',
      price: 45,
      image: '9.jpg',
    ),
    FoodItem(
      id: 10,
      name: 'CHOCOLATE',
      price: 50,
      image: '10.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          FoodItem item = items[index];

          return Card(
            margin: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  //<route name ของหน้าปลายทาง>
                  FoodDetails.routeName,
                  arguments: item,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${item.image}',
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      item.name,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}