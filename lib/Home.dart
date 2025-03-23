import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.fallback(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mine ID Card',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white, letterSpacing: 2 ),),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30.0),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/icons/Photo.png'),
                radius: 100.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Bibek Ghimire Sharma',
              style: TextStyle(
                fontSize: 25.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Text(
                  'ID :',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 75.0),
                Text(
                  ' 2203011',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'Email :',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 33.0),
                Text(
                  ' 2203011@ritindia.edu',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'Branch :',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 15.0),
                Text(
                  ' Computer Engineering',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'DOB :',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 53.0),
                Text(
                  ' 08-07-2002',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'MobileNo :',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5.0),
                Text(
                  ' 7869950129',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
