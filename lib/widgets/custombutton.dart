import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Function() onpressed;
  final String text;
  const CustomButton({required this.text, required this.onpressed, super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      child: MaterialButton(
        onPressed: () {
          widget.onpressed;
        },
        child: Text(widget.text),
      ),
    );
  }
}
