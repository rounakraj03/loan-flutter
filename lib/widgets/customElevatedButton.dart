import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  String child;
  double? width;
  double? height;
  VoidCallback onPressed;
  CustomElevatedButton({super.key, required this.child, required this.onPressed, this.width, this.height});

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
          widget.onPressed();
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
        width: widget.width ?? 100,
        height: widget.height ?? 50,
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
class CustomWhiteElevatedButton extends StatefulWidget {
  double? width;
  String child;
  VoidCallback onPressed;
  CustomWhiteElevatedButton({super.key, required this.child, required this.onPressed, this.width});

  @override
  State<CustomWhiteElevatedButton> createState() => _CustomWhiteElevatedButtonState();
}

class _CustomWhiteElevatedButtonState extends State<CustomWhiteElevatedButton> {

  List<Color> onHoverGradient = [Color(0xff323232),Color(0xff323232)];
  List<Color> onNonHoverGradient = [Colors.white,Colors.white,Colors.white,Colors.white,];
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
          widget.onPressed();
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
        width: widget.width ?? width * 0.6,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
                colors: isHovering ? onHoverGradient : onNonHoverGradient,
            )
        ),
        child: Center(child: Text(widget.child, style: TextStyle(letterSpacing: 1, wordSpacing: 1, color: isHovering ? Colors.white : Colors.black),)),
      ),
    );
  }
}

class CustomCircularElevatedButton extends StatefulWidget {
  Widget child;
  VoidCallback onPressed;
  double? height;
  double? width;
  CustomCircularElevatedButton({super.key, this.width, this.height, required this.child, required this.onPressed});

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
          widget.onPressed();
        });
      },
      onTapUp: (details){
        setState(() {
          isHovering = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: widget.width ?? 80,
        height: widget.height ?? 80,
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
