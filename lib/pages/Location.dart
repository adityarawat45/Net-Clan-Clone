// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: unnecessary_const
          const Icon(Icons.maps_home_work_rounded,color: const Color.fromARGB(255, 2, 43, 66),size: 80,),
          const HeightBox(10),
          "Unable to track location".text
                          .size(25)
                          .color(const Color.fromARGB(255, 1, 36, 56))
                          .textStyle(GoogleFonts.poppins())
                          .semiBold
                          .make(),
                          TextButton(
                onPressed: () {
                  setState(() {
                  });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 2, 58, 86), width: 2.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 2, 58, 86)),
                ),
                child: const Text(
                  "     Reload     ",
                  style: TextStyle(color: Vx.white, fontSize: 16),
                ),
              ).px16(),
        ],
      )
    );
  }
}