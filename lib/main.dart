import 'package:flutter/material.dart';
import 'side_button.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Icon(Icons.arrow_back, size: 40),
                    SideButton(the_icon: Icons.directions_bike),
                    SideButton(the_icon: Icons.directions_car),
                    SideButton(the_icon: Icons.directions_bus),
                    SideButton(the_icon: Icons.directions_walk),
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: size.width * 0.75,
                  height: size.height * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightBlue,
                        offset: Offset(5, 5),
                        blurRadius: 30,
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "images/flower_in_vase1.png",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
