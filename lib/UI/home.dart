import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quotes App",
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("First Quote"),
              TextButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.wb_sunny),
                  label: const Text("Inspire Me"))
            ],
          ),
        ),
      ),
    );
  }
}
