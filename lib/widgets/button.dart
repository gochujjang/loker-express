import 'package:flutter/material.dart';
import '../assets/colors/colors.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final String text;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.text,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      onHover: (isHovered) {
        setState(() {
          this.isHovered = isHovered;
        });
      },
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(widget.width, widget.height)),
        backgroundColor: MaterialStateProperty.all(
            isHovered ? AppColors.darkGreen : Colors.white), 
        side: MaterialStateProperty.all(const BorderSide(
          color: AppColors.darkGreen,
          width: 2.0,
        )),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return AppColors.darkGreen.withOpacity(0.1);
            }
            return null;
          },
        ),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          color: isHovered ? Colors.white : AppColors.darkGreen,
          fontFamily: "Poppins",
          fontSize: 28,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}


class GreenButton extends StatefulWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final String text;

  const GreenButton({
    Key? key,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.text,
  }) : super(key: key);

  @override
  _GreenButtonState createState() => _GreenButtonState();
}

class _GreenButtonState extends State<GreenButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      onHover: (isHovered) {
        setState(() {
          this.isHovered = isHovered;
        });
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: isHovered
              ? AppColors.darkGreen
              : Colors.white,
          fontFamily: "Poppins",
          fontSize: 28,
          fontWeight: FontWeight.w500
        ),
      ),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(widget.width, widget.height)),
        backgroundColor: MaterialStateProperty.all(
            isHovered ? Colors.white : AppColors.darkGreen),
        side: MaterialStateProperty.all(const BorderSide(
          color: AppColors.darkGreen,
          width: 2.0,
        )),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return AppColors.darkGreen.withOpacity(0.1);
            }
            return null;
          },
        ),
      ),
    );
  }
}
