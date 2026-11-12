import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.
enum ButtonType { 
  primary,
  secondary, 
  disabled }

enum IconPos { 
  left, 
  right }

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Custom Buttons',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomButton(label: "submit",
                     icon: Icons.check, 
                     iconPos: IconPos.left, 
                     type: ButtonType.primary,),

                     SizedBox(height: 10,),
                     CustomButton(label: "time",
                      icon: Icons.timelapse,
                      iconPos: IconPos.right, 
                      type: ButtonType.secondary),

                     SizedBox(height: 10,),
                     CustomButton(label: "Account",
                      icon: Icons.account_box,
                      iconPos: IconPos.left,
                      type: ButtonType.disabled),
                  ],
                ),
              )
            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPos iconPos;
  final ButtonType type;
  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    required this.iconPos,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final BackgroundColor = switch (type) {
      ButtonType.primary => Colors.blue,
      ButtonType.secondary => Colors.green,
      ButtonType.disabled => Colors.grey,
    };
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: BackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(iconPos == IconPos.left)Icon(icon),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(label),
          ),
          if(iconPos == IconPos.right)Icon(icon),
        ],
      ),
    );
  }
}
