// ignore_for_file: sized_box_for_whitespace, unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netclan_clone/pages/Button.dart';
import 'package:netclan_clone/pages/explore.dart';
import 'package:velocity_x/velocity_x.dart';

class Refine extends StatefulWidget {
  const Refine({super.key});

  @override
  State<Refine> createState() => _RefineState();
}

String dropdownValue = 'Available | Hey Let Us Connect';
double _value = 50;

class _RefineState extends State<Refine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Refine"
            .text
            .textStyle(GoogleFonts.poppins())
            .semiBold
            .size(22)
            .color(Vx.white)
            .make(),
        iconTheme: const IconThemeData(
          color: Vx.white,
        ),
        backgroundColor: const Color(0xFF022B42),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 22),
            "Select Your Availability"
                .text
                .semiBold
                .color(const Color.fromARGB(255, 2, 58, 86))
                .size(16)
                .textStyle(GoogleFonts.poppins())
                .make()
                .px16(),
            const SizedBox(height: 14),
            Container(
              width: BouncingScrollSimulation.maxSpringTransferVelocity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 2, 58, 86)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Available | Hey Let Us Connect',
                  'Away | Stay Discrete And Watch',
                  'Busy | Do Not Disturb | Catch Up Later',
                  'SOS! Emergency | Need Assistance!'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                alignment: Alignment.center,
                style: const TextStyle(
                    color: Color.fromARGB(171, 0, 0, 0), fontSize: 16),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromARGB(255, 2, 58, 86),
                ),
                underline: Container(),
              ),
            ).px12(),
            const SizedBox(height: 22),
            "Add Your Status"
                .text
                .semiBold
                .color(const Color.fromARGB(255, 2, 58, 86))
                .size(16)
                .textStyle(GoogleFonts.poppins())
                .make()
                .px16(),
            const SizedBox(height: 14),
            Container(
              width: BouncingScrollSimulation.maxSpringTransferVelocity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 2, 58, 86)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const TextField(
                textAlign: TextAlign.left,
                maxLength: 250,
                decoration: InputDecoration(
                    hintText: "Hi community! I am open to new connections!",
                    hintMaxLines: 5,
                    border: InputBorder.none),
              ).p8(),
            ).p16(),
            const SizedBox(height: 22),
            "Select Hyper Local Distance"
                .text
                .semiBold
                .color(const Color.fromARGB(255, 2, 58, 86))
                .size(16)
                .textStyle(GoogleFonts.poppins())
                .make()
                .px16(),
            const SizedBox(height: 14),
            Container(
              width: BouncingScrollSimulation.maxSpringTransferVelocity,
              child: Column(
                children: [
                  Slider(
                    value: _value,
                    onChanged: (newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                    min: 1,
                    max: 100,
                    divisions: 99,
                    label: '$_value km',
                    onChangeEnd: (double newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 2, 58, 86),
                    mouseCursor: SystemMouseCursors.click,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "1km"
                          .text
                          .color(const Color.fromARGB(255, 2, 58, 86))
                          .make(),
                      "100km"
                          .text
                          .color(const Color.fromARGB(255, 2, 58, 86))
                          .make(),
                    ],
                  ).px12()
                ],
              ),
            ),
            const SizedBox(height: 22),
            "Select Purpose"
                .text
                .semiBold
                .color(const Color.fromARGB(255, 2, 58, 86))
                .size(16)
                .textStyle(GoogleFonts.poppins())
                .make()
                .px16(),
            const SizedBox(height: 14),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomButton(title: 'Coffee').pOnly(right: 12),
                      const CustomButton(title: 'Business').pOnly(right: 12),
                      const CustomButton(title: 'Hobbies').pOnly(right: 12),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomButton(title: 'Friendship').pOnly(right: 12),
                      const CustomButton(title: 'Movies').pOnly(right: 12),
                      const CustomButton(title: 'Dining').pOnly(right: 12),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomButton(title: 'Dating').pOnly(right: 12),
                      const CustomButton(title: 'Matrimony'),
                    ],
                  ),
                ],
              ),
            ),
            const HeightBox(15),
            Center(
              child: Container(
                  child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Explore()));
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
                  "     Save & Explore     ",
                  style: TextStyle(color: Vx.white, fontSize: 16),
                ),
              ).px16()),
            )
          ],
        ).px(18),
      ),
    );
  }
}
