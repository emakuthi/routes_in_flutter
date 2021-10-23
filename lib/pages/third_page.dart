import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String name;
  const ThirdPage({Key? key, required this.name}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Hello World');
          },
          child: Text('Hi ${widget.name} go back to main page'),
        ),
      ),
    );
  }
}
