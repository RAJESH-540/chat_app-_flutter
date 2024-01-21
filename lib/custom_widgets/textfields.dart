import 'package:flutter/material.dart';
typedef OnTextChange=void Function(String);
class CustomTextFields extends StatelessWidget {
  final String hint;
  final IconData preIcon;
  final TextInputType inputType;
  final bool isVisible;
   final TextInputAction inputAction;
  final TextEditingController controller;

  final OnTextChange onTextChange;

  const CustomTextFields(
      {super.key,
      required this.hint,
      required this.preIcon,
      required this.controller,
      required this.inputType,
      required this.isVisible, required this.inputAction,required this.onTextChange});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      controller: controller,
      obscureText: isVisible,
      textInputAction: inputAction,
      onChanged: (value){
        onTextChange(value);
      },
      decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(preIcon),
          focusColor: Colors.green,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.yellow)
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:  const BorderSide(color: Colors.grey)
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(16),
          )),
    );
  }
}
