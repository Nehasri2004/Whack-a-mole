// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/pages/reg.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _usernameController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon(),
          SizedBox(height: 20),
          _buildTextField("Enter Email", _usernameController),
          SizedBox(height: 20),
          _buildTextField("Password", _passwordController, isPassword: true),
          SizedBox(height: 25),
          _submit(),
          SizedBox(
            height: 15,
          ),
          Text("Don't have an account?"),
          SizedBox(
            height: 10,
          ),
          _reg(),
          SizedBox(
            height: 15,
          ),
          Text("OR"),
          SizedBox(
            height: 10,
          ),
          _buttons(),
        ],
      ),
    );
  }

  Widget _submit() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
            },
            child: Text("Login"),
          ),
          SizedBox(
            width: 30,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Forgot")),
        ],
      ),
    );
  }

  // ignore: unused_element
  Widget _buttons() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text("Google")),
          SizedBox(width: 50),
          ElevatedButton(onPressed: () {}, child: Text("Facebook")),
        ],
      ),
    );
  }

  Widget _reg() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegistrationPag()));
              },
              child: Text("Registration Form")),
        ],
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 254, 254, 254), width: 2),
          shape: BoxShape.circle),
      // ignore: prefer_const_constructors
      child: Icon(
        Icons.person,
        color: Color.fromARGB(255, 80, 9, 247),
        size: 120,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _buildTextField(String Text, TextEditingController controller,
      {bool isPassword = false}) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: Text,

          // ignore: prefer_const_constructors
          labelStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          // ignore: prefer_const_constructors
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
      ),
    );
  }
}