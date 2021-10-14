import 'package:flutter/material.dart';

Widget myTextFormField({
  required FormFieldValidator<String> validator,
  TextInputAction textInputAction = TextInputAction.next,
  TextInputType keyboardType = TextInputType.text,
  required IconData prefixIcon,
  required String label,
  Widget? suffixIcon,
  required TextEditingController controller,
  bool obscureText = false,
}) {
  return TextFormField(
    controller: controller,
    validator: validator,
    textInputAction: textInputAction,
    keyboardType: keyboardType,
    obscureText: obscureText,
    decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(prefixIcon),
      suffixIcon: suffixIcon,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
    ),
  );
}

const Color blueColor = Color(0xFF3E4BAD);

Widget myButtonWidget({
  VoidCallback? onPressed,
  required String texts,
  Color backgroundColor = blueColor,
  double height=120,
  double width=12
}) {
  return ElevatedButton(
    onPressed:  onPressed,
    child: Text(
      texts,
    ),
    style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding:  EdgeInsets.symmetric(horizontal: height, vertical: width)),
  );
}
