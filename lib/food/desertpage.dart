import 'package:cafesasii/models/food_details.dart';
import 'package:cafesasii/models/food_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class dessertpage extends StatefulWidget {
  const dessertpage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<dessertpage> {
  var items = [
    FoodItem(
      id: 11,
      name: 'ไดฟูกุ',
      price: 45,
      image: '11.jpg',
    ),
    FoodItem(
      id: 12,
      name: 'สตอเบอร์รี่ชีสเค้ก',
      price: 65,
      image: '12.jpg',
    ),
    FoodItem(
      id: 13,
      name: 'บลูเบอร์รี่ชีสพาย',
      price: 65,
      image: '13.jpg',
    ),
    FoodItem(
      id: 14,
      name: 'ชูครีม',
      price: 45,
      image: '14.jpg',
    ),
    FoodItem(
      id: 15,
      name: 'คุ้กกี้',
      price: 35,
      image: '15.jpg',
    ),
    FoodItem(
      id: 16,
      name: 'เค้กสตอเบอร์รี่',
      price: 65,
      image: '17.jpg',
    ),
    FoodItem(
      id: 17,
      name: 'มันหวานญี่ปุ่น',
      price: 35,
      image: '16.jpg',
    ),
    FoodItem(
      id: 18,
      name: 'บราวนี่',
      price: 35,
      image: '18.jpg',
    ),
    FoodItem(
      id: 19,
      name: 'ปังปิ้ง',
      price: 25,
      image: '19.jpg',
    ),
    FoodItem(
      id: 20,
      name: 'บิงซู',
      price: 99,
      image: '20.jpg',
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