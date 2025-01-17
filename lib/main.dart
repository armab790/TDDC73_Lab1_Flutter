import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Example 1: Flutter',
      home: ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 1: Flutter'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            Center(
              child: Image(
                image: AssetImage('assets/Logga_Centurion.png'),
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(height: 20),

            ButtonGrid(),

            SizedBox(height: 20),

            EmailTextField(),
          ],
        ),
      ),
    );
  }
}

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: const [
        ElevatedButton(
          onPressed: null, 
          child: Text('BUTTON'),
          
        ),
        ElevatedButton(
          onPressed: null, 
          
          child: Text('BUTTON'),
        ),
        ElevatedButton(
          onPressed: null, 
          child: Text('BUTTON'),
        ),
        ElevatedButton(
          onPressed: null,
          child: Text('BUTTON'),
        ),
      ],
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}

