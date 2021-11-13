import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(80.0),
                    child: Container(
                      width: 160.0,
                      height: 160.0,
                      child: Image.asset('assets/images/logo.jpg'),
                    )
                ),
                Text("Maysasi CAFE", style: Theme.of(context).textTheme.bodyText1,),
                Text("Open daily🌞", style: Theme.of(context).textTheme.bodyText2,),
                Text("10.00 AM - 09.00 PM", style: Theme.of(context).textTheme.bodyText2,),
                Text("Vibe•drinks•food•dessert🌞", style: Theme.of(context).textTheme.bodyText2,),
              ],
            ),
          ),
        ),
      );
  }
}