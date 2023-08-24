import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  String child;
  VoidCallback onPressed;
  CustomElevatedButton({super.key, required this.child, required this.onPressed});

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {

  List<Color> onHoverGradient = [Colors.redAccent.shade200,Colors.redAccent.shade200,Colors.redAccent.shade200,Colors.redAccent.shade200];
  List<Color> onNonHoverGradient = [Colors.deepOrangeAccent,Colors.deepOrange.shade300,Colors.deepOrange.shade300,Colors.redAccent.shade200];
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      onTapDown: (details){
        setState(() {
          isHovering = true;
        });
      },
      onTapCancel: () {
        setState(() {
          isHovering = false;
        });
      },
      onTapUp: (details){
        setState(() {
          isHovering = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
                colors: isHovering ? onHoverGradient : onNonHoverGradient,
            )
        ),
        child: Center(child: Text(widget.child, style: TextStyle(letterSpacing: 1, wordSpacing: 1),)),
      ),
    );
  }
}

class CustomCircularElevatedButton extends StatefulWidget {
  Widget child;
  VoidCallback onPressed;
  CustomCircularElevatedButton({super.key, required this.child, required this.onPressed});

  @override
  State<CustomCircularElevatedButton> createState() => _CustomCircularElevatedButtonState();
}

class _CustomCircularElevatedButtonState extends State<CustomCircularElevatedButton> {

  List<Color> onHoverGradient = [Colors.redAccent.shade200,Colors.redAccent.shade200,Colors.redAccent.shade200,Colors.redAccent.shade200];
  List<Color> onNonHoverGradient = [Colors.deepOrangeAccent,Colors.deepOrange.shade300,Colors.deepOrange.shade300,Colors.redAccent.shade200];
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      onTapCancel: () {
        setState(() {
          isHovering = false;
        });
      },
      onTapDown: (details){
        setState(() {
          isHovering = true;
        });
      },
      onTapUp: (details){
        setState(() {
          isHovering = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: isHovering ? onHoverGradient : onNonHoverGradient,
            )
        ),
        child: Center(child: widget.child),
      ),
    );
  }
}
