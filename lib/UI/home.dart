import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _counter = 0;

  final List Quotes = [
    "”It is hard to fail but it is worse never to have tried to succeed”.—Theodore Roosevelt",
    "“It is hard to fail but it is worse never to have tried to succeed.”—Friedrich Nietzsche",
    "“I have not failed. I’ve just found 10,000 ways that won’t work.” —Thomas A. Edison",
    "“Be miserable. Or motivate yourself. Whatever has to be done, it’s always your choice.” —Wayne Dyer",
    "“The future belongs to those who believe in the beauty of their dreams.” —Eleanor Roosevelt",
    "“I challenge you to make your life a masterpiece. I challenge you to join the ranks of those"
        " people who live what they teach, who walk their talk.” —Anthony Robbins",
    "“The greater damage for most of us is not that our aim is too high and we miss it, but that it it too low and we reach it.” —Michelangelo"
        "“Do not go where the path may lead , go instead where there is no path and leave a trail.” —Ralph Waldo Emerson",
    "Success is not final, failure is not fatal: it is the courage to continue that counts. —Winston Churchill"
        "“I hated every minute of training, but I said, ‘Don’t quit. Suffer now and live the rest of your life as a champion.’” —Muhammad Ali",
    "“I’ve missed more than 9000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to"
        " take the game-winning shot and missed. I’ve failed over and over and over again in my life. And that is why I succeed.” —Michael Jordan",
    "“The two most important days in your life are the day you are born and the day you find out why.” —Mark Twain",
    "“When everything seems to be going against you, remember that the airplane takes off against the wind, not with it.” —Henry Ford",
    "“Live each day as if your life had just begun.” —Johann Wolfgang Von Goethe",
    "“The journey of a thousand miles begins with one step.” —Lao Tzu"
  ];
  @override
  Widget build(BuildContext context) {
    TextStyle styles = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.black87,
      fontStyle: FontStyle.italic,
    );
    return MaterialApp(
      title: "Quotes App",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  width: 350,
                  height: 200,
                  margin: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14.5),
                  ),
                  child: Center(
                    child: Text(
                      Quotes[_counter % Quotes.length],
                      style: styles,
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 1.3,
              color: Colors.greenAccent,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: TextButton.icon(
                onPressed: _showQuote,
                icon: const Icon(
                  Icons.wb_sunny,
                  color: Colors.black,
                ),
                label: Text(
                  "Inspire Me",
                  style: styles.copyWith(fontSize: 16.0, color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.greenAccent.shade700),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _counter++;
    });
  }
}
