// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String title;
  
  const CustomButton({Key? key, required this.title}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: _isClicked ? Colors.white : const Color.fromARGB(255, 2, 58, 86), width: 1.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(_isClicked ? const Color.fromARGB(255, 2, 58, 86) : Colors.white),
      ),
      child: Text(
        widget.title,
        style: TextStyle(color: _isClicked ? Colors.white : const Color.fromARGB(255, 2, 58, 86)),
      ),
    );
  }
}
