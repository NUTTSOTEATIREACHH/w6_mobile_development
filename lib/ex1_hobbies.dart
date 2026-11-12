import 'package:flutter/material.dart';

// EX 1 – The hobbies (handout page: EX 1)
// Part 1: build ONE hobby card.
// Part 2: extract it into a StatelessWidget called HobbyCard, then show several cards.
class HobbyCard extends StatelessWidget {
    final String title;
    final IconData icon;
    final Color? color;

    const HobbyCard({super.key, required this.title, required this.icon, this.color});

    @override
  Widget build(BuildContext context) {
    return 
      Container
        (padding: EdgeInsets.all(30), 
        decoration: BoxDecoration(color: (color == null) ? Colors.blue : color, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Row(spacing: 20,
                children: [
                    Icon(icon),
                    Text(title)
                    ],
                  ),
                )
        );
  }

}
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(spacing: 10, crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(title: 'Traveling', icon: Icons.search, color: Colors.greenAccent,),
              HobbyCard(title: 'Skating', icon: Icons.skateboarding)
            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}
