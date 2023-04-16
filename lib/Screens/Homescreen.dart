import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sellerside/Screens/slidingscreen.dart';
import 'package:sellerside/providers/auth_provider.dart';
import 'package:sellerside/Screens/first_look.dart';
class HomePage extends StatelessWidget {
  static const String screenId = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(70, 70),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            flexibleSpace:FlexibleSpaceBar(
              background: Row(
                children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 10), // Add empty space above the logo
                        Image.asset(
                          'assets/logo.jpg',
                          height: 60,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            actions: [
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  // TODO: Implement search functionality.
                },
                padding: EdgeInsets.only(left: 0.0),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Location section
              Container(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 5.0),
                    Text('Your Location'),
                  ],
                ),
              ),

      //Sliding Screens
              SlidingScreens(),

      //Buy sell Section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 160.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Provider.of<AuthProvider>(context, listen: false).logout(context);
                        },
                        child: Text(
                          'Buy/Rent',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0), // Add space here
                    SizedBox(
                      width: 160.0,
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: implement sell/rent function
                        },
                        child: Text(
                          'Sell/Rent',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),




//Horizontal category Section
      Container(
        height: 115.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0), // add left padding of 10.0
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Do something when the "Grains" category is tapped.
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: 80.0,
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.grass),
                            SizedBox(height: 5.0),
                            Text('Grocery'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () {
                      // Do something when the "Flowers" category is tapped.
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: 80.0,
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.power),
                            SizedBox(height: 5.0),
                            Text('Tools'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () {
                      // Do something when the "Vegetables" category is tapped.
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: 80.0,
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.grass),
                            SizedBox(height: 5.0),
                            Text('Vegetables'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () {
                      // Do something when the "Livestock" category is tapped.
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: 80.0,
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.grain),
                            SizedBox(height: 5.0),
                            Text('Livestock'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () {
                      // Do something when the "Fruits" category is tapped.
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: 80.0,
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.filter_vintage),
                            SizedBox(height: 5.0),
                            Text('Fruits'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () {
                      // Do something when the "Plants" category is tapped.
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: 80.0,
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(Icons.local_florist),
                            SizedBox(height: 5.0),
                            Text('Plants'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

      // Recommendations section
      Container(
        height: 205,
        width: 450,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 370.0,
              height: 150.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Recommendation 1'),
              ),
            ),
            Container(
              width: 370.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Recommendation 2'),
              ),
            ),
            Container(
              width: 370.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Recommendation 3'),
              ),
            ),
            Container(
              width: 370.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Recommendation 4'),
              ),
            ),
          ],
        ),
      ),
    ],
    ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green, // Set the background color to green
        type: BottomNavigationBarType.fixed, // This line ensures all icons and labels are visible
        selectedItemColor: Colors.black, // Set the selected icon color to white
        unselectedItemColor: Colors.black, // Set the unselected icon color to white
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_sharp),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      )
    );
  }
}