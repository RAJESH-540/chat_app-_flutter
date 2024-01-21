import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   final String text;
   final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(12)
         ),
        minimumSize: const Size(370, 60),
        backgroundColor: Colors.green
      ),
        onPressed: onPressed,
        child: Text(text,style:  const TextStyle(color: Colors.white),));
  }
}
