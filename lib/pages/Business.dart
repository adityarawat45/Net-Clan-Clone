// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:netclan_clone/pages/businesscard.dart';
import 'package:velocity_x/velocity_x.dart';

class Business extends StatefulWidget {
  const Business({super.key});

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeightBox(25),
          Center(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: BouncingScrollSimulation.maxSpringTransferVelocity,
                    decoration: BoxDecoration(
                       border: Border.all(
                  color: const Color(0xFF022B42), 
                  width: 1.0, // 
                ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search....',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Color(0xFF022B42),
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.settings_solid,size:32),
                  onPressed: () {
                  },
                ),
              ],
            ).px16(),
          ),
          const HeightBox(22),
         Center(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const Icon(Icons.sms_failed_rounded,size: 80,color:Color.fromARGB(255, 2, 43, 66) ,),
               "Unable to load Businesses".text
                           .size(25)
                           .color(const Color.fromARGB(255, 1, 36, 56))
                           .textStyle(GoogleFonts.poppins())
                           .semiBold
                           .make()
             ],
           ),
         )
        ],   
      ),
    );
  }
}