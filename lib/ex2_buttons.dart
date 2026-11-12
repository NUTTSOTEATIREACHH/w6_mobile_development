import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.
enum position { left, right }
enum type { primary, secondary, disabled }

class CustomButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final type? color;
  final position? pos;

  CustomButton({super.key, required this.title, required this.icon, this.pos, this.color});

  TextDirection getdirection(pos) {
    if (pos == null || pos == position.left) {
      return TextDirection.ltr;
    }
    return TextDirection.rtl;
  }

  Color getColor(color) {
    if (color == null || color == type.primary) {
      return Colors.blue;
    } else if (color == type.secondary) {
      return Colors.green;
    } else {
      return Colors.grey;
    }
  }
  @override
  Widget build(BuildContext context) {
    return
      Container(padding: EdgeInsets.all(20), decoration: BoxDecoration(color: getColor(color), borderRadius: BorderRadius.circular(20)),
        child: Row(
          spacing: 10, 
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: getdirection(pos), 
          children: [
            Icon(icon),
            Text(title)
          ],
        ),
      );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(padding: EdgeInsets.all(50),
          child: Column(spacing: 30,
            children: [
              CustomButton(title: 'Submit', icon: Icons.check),
              CustomButton(title: 'Time', icon: Icons.timer, pos: position.right, color: type.secondary),
            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}
