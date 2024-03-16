// ignore_for_file: sort_child_properties_last, prefer_const_constructors_in_immutables, prefer_const_constructors

/*import 'package:flutter/material.dart';

import 'package:myapp/pages/login.dart';

class IntroPage extends StatelessWidget {
  // ignore: use_super_parameters
  IntroPage({Key? key}) : super(key: key); // Remove const keyword here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 83, 83),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: <Widget>[
            AnimatedBackground(),
            SizedBox(height: 30),
            Text(
              'Whack-A-Mole',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Enjoy Your Game',
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(255, 250, 249, 249),
              ),
            ),
            SizedBox(height: 50),
            _button(context), // Invoke the _button method without const keyword
          ],
        ),
      ),
    );
  }

  Widget _button(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: const Text(
        'Play',
        style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 171, 229, 243),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 129, 148, 85),
      ),
      child: const Text(
        'Exit',
        style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 171, 229, 243),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 129, 148, 85),
      ),
    );
  }
}
// Define AnimatedBackground widget
class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your animated background here, such as using a Container with BoxDecoration and BoxDecoration's gradient property
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.green,
          ],
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:myapp/pages/login.dart';

class IntroPage extends StatelessWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 93, 111),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedBackground(),
            SizedBox(height: 30),
            Text(
              'Whack-A-Mole',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Enjoy Your Game',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(213, 24, 28, 23),
              ),
            ),
            SizedBox(height: 50),
            _button(context, 'Play', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }, Size(250, 60)), // Increased size for the "Play" button
            SizedBox(height: 10), // Add some spacing between buttons
            _button(context, 'Exit', () {
              // Handle exit logic here
            }, Size(120, 40)),
            SizedBox(height: 10),
            _button(context, 'MainMenu', () {
              // Handle main menu logic here
            }, Size(120, 40)),
          ],
        ),
      ),
    );
  }

  Widget _button(BuildContext context, String text, VoidCallback onPressed, [Size? size]) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 171, 229, 243),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 146, 126, 60),
        minimumSize: size ?? Size(200, 40), // Use the provided size or default to (200, 40)
      ),
    );
  }
}

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.green,
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:myapp/pages/game.dart';
// for asset loading

class IntroPage_app extends StatelessWidget {
  const IntroPage_app({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 93, 111),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Add the image
              Image(
                image: AssetImage(
                    'images/wam.png'), // Replace with your image path
                width: 200,
                height: 200,
              ),
              SizedBox(height: 30),
              Text(
                'Whack-A-Mole',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Enjoy Your Game',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(213, 24, 28, 23),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Play button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WhackAMoleApp()));
                    },
                    child: Text(
                      'PLAY',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 146, 126, 60),
                      minimumSize: Size(120, 40),
                    ),
                  ),
                  SizedBox(width: 30), // Add spacing between buttons
                  // Exit button
                  ElevatedButton(
                    onPressed: () {
                      // Handle exit button press
                    },
                    child: Text(
                      'EXIT',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 146, 126, 60),
                      minimumSize: Size(120, 40),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
