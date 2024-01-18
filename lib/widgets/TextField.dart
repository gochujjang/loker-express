import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final bool isPhoneNumber;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.isPassword = false,
    this.isPhoneNumber = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 500,
      child: TextFormField(
        obscureText: isPassword,
        keyboardType: isPhoneNumber ? TextInputType.phone : TextInputType.text,
        inputFormatters: isPhoneNumber
            ? [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),
              ]
            : null,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
        ),
        validator: (value) {
          if (isPassword && value != null && value.length < 8) {
            return 'Password harus memiliki minimal 8 karakter';
          }
          return null;
        },
      ),
    );
  }
}
