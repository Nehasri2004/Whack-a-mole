import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(WhackAMoleApp());
}

class WhackAMoleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whack-a-Mole',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WhackAMoleGame(),
    );
  }
}

class WhackAMoleGame extends StatefulWidget {
  @override
  _WhackAMoleGameState createState() => _WhackAMoleGameState();
}

class _WhackAMoleGameState extends State<WhackAMoleGame> {
  Random _random = Random();
  int _currentMoleIndex = -1;
  int _score = 0;
  int _timeRemaining = 30;
  Timer? _gameTimer;

  @override
  void initState() {
    super.initState();
    _startGame();
  }

  @override
  void dispose() {
    _gameTimer?.cancel();
    super.dispose();
  }

  void _startGame() {
    _timeRemaining = 30;
    _gameTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _timeRemaining--;
        if (_timeRemaining <= 0) {
          _endGame();
        } else {
          _nextMole();
        }
      });
    });
  }

  void _nextMole() {
    setState(() {
      _currentMoleIndex = _random.nextInt(9);
    });
  }

  void _onMoleTap(int index) {
    if (index == _currentMoleIndex) {
      setState(() {
        _score++;
        _nextMole();
      });
    }
  }

  void _endGame() {
    _gameTimer?.cancel();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Game Over'),
          content: Text("Your game has ended. Score: $_score"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _score = 0;
                  _startGame();
                });
              },
              child: Text('Play Again'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Whack-a-Mole'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Time Remaining: $_timeRemaining',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Score: $_score',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Container(
              width: 240, // Adjust width as needed
              height: 240, // Adjust height as needed
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _onMoleTap(index),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == _currentMoleIndex
                            ? Colors.brown
                            : Colors.green,
                      ),
                      child: Center(
                        child: index == _currentMoleIndex ? Icon(Icons.cloud) : null,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}