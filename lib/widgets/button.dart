import 'package:flutter/material.dart';
import '../assets/colors/colors.dart';

class CustomButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double width; 
  final double height; 

  const CustomButton({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.width,
    required this.height,
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
      child: widget.child,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(widget.width, widget.height)),
        backgroundColor: MaterialStateProperty.all(isHovered ? AppColors.darkGreen : Colors.white),
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
