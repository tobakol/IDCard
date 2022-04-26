import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
//Allows google material design features inside this app
//serves as the root widget for the whole app
// Also note the property:Widget arrangement
//widgets can not just exist on their own, they have to be attached to properties
    home:Home()
  //This means there is a home property(i.e home screen) which is a 'scaffold'
  //note here that the properties are separated by commas

));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //One reason for doing this as stateless widget is that it enables hot reload
  int updater = 0;
  @override
  Widget build(BuildContext context) {
    //build functions generally overwrite corresponding build functions in classes they inherit from
    return Scaffold(
      //Scaffold widget allows us implement layout props including appbar
      appBar: AppBar(

        //covers the app bar at the top of the application
        title: Text(
          'My FIRST app',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Nunito',
            color: Colors.blue,
          ),
        ),

        //determines the txt at the top of the app
        centerTitle: true,
        //centralizes the title
        backgroundColor: Colors.amber[400],
        //'backgroundColor' determines the color of the bar and to change color
        //strength/ depth, press ctrl Q when you havve clicked once on ur color choice
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.00, 40.00, 60.00, 0.00),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: CircleAvatar(
                radius: 150.00,
                backgroundImage: AssetImage('assets/car.jpg'),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 60.00,
              thickness: 2.0,),

            Text(
              'Name',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 10.00,),

            Text(
              'Kolade Ebenezer',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.00,),

            Text(
              'Contact',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),

            SizedBox(height: 10.00,),

            Row(
                children: [
                  Icon(Icons.add_circle_outline_sharp,),
                  Text (
                      'Job Site ',
                      style: TextStyle(
                        fontSize: 15.0,
                      )
                  ),

                  SizedBox(width: 20.00,),
                  Icon(Icons.mail),

                  Text(
                      'tobakolade@gmail.com',
                      style: TextStyle(
                        fontSize: 15.0,
                      )),
                  SizedBox(width: 20.00,),
                ]
            ),
            SizedBox(height: 20.00,),
            Row(
              children: [
                Icon(Icons.phone),
                Text(
                    '+2348148839599',
                    style: TextStyle(
                      fontSize: 15.0,
                    )
                ),
              ],
            ),



            SizedBox(height: 20.00,),
            Text(
                'Click to show you have read',
                style: TextStyle(
                  fontSize: 15.0,
                )
            ),

            SizedBox(height: 20.00,),
            Row(
              children: [
                Icon(Icons.add,),
                Text (
                    'No of Times Read: ',
                    style: TextStyle(
                      fontSize: 15.0,
                    )
                ),
                SizedBox(width: 20.00,),
                Text(
                  '$updater',
                  style: TextStyle(
                      fontSize: 25.0
                  ),
                )
              ],

            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        //The button with something inside
        onPressed: () {
          setState(() {
            updater +=1 ;
          });
        },
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
    //returns the homescreen widget
  }
}
//Stateless widgett: Widget state does not change over time with data that can not change over time
//Stateful Widget: has its state changeable over time including data(e.g ships destroyed)

