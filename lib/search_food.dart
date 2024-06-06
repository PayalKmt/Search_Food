import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFood extends StatefulWidget {
  const SearchFood({super.key});

  @override
  State<SearchFood> createState() => _SearchFoodState();
}

class _SearchFoodState extends State<SearchFood> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 35.0,
          left: 19.0,
          right: 19.0,
          bottom: 15.0,
        ),
        child: Container(
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
                side: BorderSide(
                  color: Colors.white,
                )),
            elevation: 8.0,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 18.0, right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            elevation: 1.0,
                            child: IconButton(
                              icon: FaIcon(Icons.arrow_back_ios_sharp),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                      ),
                      Text(
                        'Search Food',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        child: Card(
                            color: Color(0xFFFFA600),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 1.0,
                            child: Image(
                              image: AssetImage('images/img.png'),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 18.0, right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 65.0,
                          child: Card(
                            color: Color(0xECFFFFFF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            elevation: 0.2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.search_rounded),
                                  SizedBox(
                                    width: 7.0,
                                  ),
                                  Text(
                                    'Spice Food',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 65.0,
                        width: 65.0,
                        child: Card(
                            color: Color(0xFFFFD003),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 1.0,
                            child: IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.sliders,
                                size: 18.0,
                              ),
                              onPressed: () {},
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 5.0, left: 18.0, right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Card(
                          color: Color(0xFFFFFFFF),
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text('Found\n80 results',
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                          child: Row(
                            children: [
                              ReusableCard(
                                  image: Image.asset(
                                    'images/sandwich.png',
                                    height: 85.0,
                                    width: 85.0,
                                  ),
                                  nameOfDish: 'Oni Sandwich',
                                  description: 'Spicy chicken sandwich',
                                  calories: 69,
                                  price: '6.72'),
                              ReusableCard(
                                  image: Image.asset(
                                    'images/dan.png',
                                    height: 85.0,
                                    width: 85.0,
                                  ),
                                  nameOfDish: 'Dan Noodles',
                                  description: 'Spicy fruti mixed',
                                  calories: 120,
                                  price: '8.86')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                          child: Row(
                            children: [
                              ReusableCard(
                                  image: Image.asset(
                                    'images/egg.png',
                                    height: 85.0,
                                    width: 85.0,
                                  ),
                                  nameOfDish: 'Egg Pasta',
                                  description: 'Spicy chicken pasta',
                                  calories: 78,
                                  price: '9.80'),
                              ReusableCard(
                                  image: Image.asset(
                                    'images/dimsun.png',
                                    height: 85.0,
                                    width: 85.0,
                                  ),
                                  nameOfDish: 'Chicken Dimsum',
                                  description: 'Spicy chicken dimsum',
                                  calories: 65,
                                  price: '6.69')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                          child: Row(
                            children: [
                              ReusableCard(
                                  image: Image.asset(
                                    'images/sandwich.png',
                                    height: 85.0,
                                    width: 85.0,
                                  ),
                                  nameOfDish: 'Oni Sandwich',
                                  description: 'Spicy chicken sandwich',
                                  calories: 69,
                                  price: '6.72'),
                              ReusableCard(
                                  image: Image.asset(
                                    'images/dan.png',
                                    height: 85.0,
                                    width: 85.0,
                                  ),
                                  nameOfDish: 'Dan Noodles',
                                  description: 'Spicy fruti mixed',
                                  calories: 120,
                                  price: '8.86')
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Image image;
  final String nameOfDish;
  final String description;
  final int calories;
  final String price;

  ReusableCard(
      {required this.image,
      required this.nameOfDish,
      required this.description,
      required this.calories,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, left: 8.0, right: 8.0, bottom: 10.0),
        child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0), child: image)),
              SizedBox(
                height: 15.0,
              ),
              Text(
                nameOfDish,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(description,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 9.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )),
              SizedBox(
                height: 3.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage('images/fire.png'),
                      ),
                      height: 20.0,
                      width: 20.0,
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      '$calories Colories',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$',
                      style: TextStyle(
                          color: Color(0xFFF6D046),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      price,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            fontSize: 28.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
