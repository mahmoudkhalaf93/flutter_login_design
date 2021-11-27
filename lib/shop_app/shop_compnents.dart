import 'package:flutter/material.dart';

Widget myshopTextFormField(
    {required String label,
    required FormFieldValidator<String> validator,
    required TextEditingController controller,
    required IconData prefixIcon,
    Widget? suffixIcon,
    bool obscureText=false,
      TextInputAction textInputAction = TextInputAction.next,
      TextInputType keyboardType = TextInputType.name,
    }) {
  return TextFormField(
    validator: validator,
    controller: controller,
    obscureText: obscureText,
   textInputAction: textInputAction,
    keyboardType: keyboardType,
    decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon),
  );
}

Widget myshopButtonWidget(
    {required VoidCallback onPressed,
      required String texts,
      Color backgroundColor = Colors.blue,
      double height = 50,
      double width = 400}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(
      texts,
      maxLines: 1,
    ),
    style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: Size(width, height)),
  );
}