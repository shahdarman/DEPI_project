import 'package:flutter/material.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({
    required this.icon,
    required this.buttonText,
    required this.backgroundColor,
    this.onTap
  });

  final IconData icon;
  final String buttonText;
  final Color backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            CircleAvatar(
              child: Icon(icon, size: 20),
              radius: 20,
              backgroundColor: backgroundColor,
            ),
            SizedBox(width: 10),
            Text(
              buttonText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios_outlined, size: 15),
          ],
        ),
      ),
    );
  }
}
