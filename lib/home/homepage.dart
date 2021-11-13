import 'package:cafesasii/food/desertpage.dart';
import 'package:cafesasii/food/foodpage.dart';
import 'package:cafesasii/food/info.dart';
import 'package:flutter/material.dart';






class HomePage extends StatefulWidget {
  static const routeName = '/login';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 2;
  List<String> titleName = ["DRINK", "DESSERT","ABOUT US"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titleName[_subPageIndex], style: TextStyle(color: Colors.white),),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [
                      0.4,
                      0.8,
                      1.0
                    ],
                    colors: [
                      Colors.brown,
                      Colors.brown,
                      Colors.brown

                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('assets/images/logo.jpg')
                        )),
                    Text("Maysasi cafe",
                        style: TextStyle(color: Colors.white, fontSize: 18)),

                  ],
                ),
              ),
              _buildDrawerItem(Icons.wine_bar,"DRINK", 0),
              _buildDrawerItem(Icons.fastfood, "DESSERT", 1),
              _buildDrawerItem(Icons.person, "ABOUT US", 2),
            ],
          ),
        ),
        body: _buildSubPage()
    );
  }

  Widget _buildSubPage() {
    switch (_subPageIndex) {
      case 0: // home page
        return FoodPage();
      case 1:
        return dessertpage();
      case 2:
        return ProfilePage();
      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildDrawerItem(IconData icon, String title,int index) {
    return ListTile(
      leading: Icon(icon),
      title: Align(
        alignment: Alignment(-1.3, 0),
        child: Text(
          title,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      selected: index == _subPageIndex,
      onTap: () {
        Navigator.of(context).pop();
        setState(() {
          _subPageIndex = index;
        });
      },
    );
  }
}