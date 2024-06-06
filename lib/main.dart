import 'package:flutter/material.dart';
import 'package:food_order_app/search_food.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFDBB2E),
        title: Text(
          'Food Order',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: HomeScreen(),
    ),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xD2FFFFFF),
      child: Center(
        child: Expanded(
          child: Card(
            margin: EdgeInsets.all(10.0),
            color: Colors.white60,
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchFood()));
              },
              child: Text(
                'Search Food',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



