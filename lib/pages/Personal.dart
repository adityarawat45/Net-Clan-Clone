// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netclan_clone/pages/personalcard.dart';
import 'package:velocity_x/velocity_x.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
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
          const Column(
            children: [
              Pcard(firstName: 'Aditya',lastName: 'Rawat',location: 'Yamunanagar',profile: 45,role: 'Software Engineer',),
              Pcard(firstName: 'Pankag',lastName: 'Goyal',location: 'Bangalore',profile: 23,role: 'Product manager',),
              Pcard(firstName: 'Shikha',lastName: 'Sharma',location: 'New Delhi',profile: 65,role: 'Teacher',),
              Pcard(firstName: 'Maruti',lastName: 'Suzuki',location: 'Pune',profile: 24,role: 'Data Analyst',),
              Pcard(firstName: 'Kriti',lastName: 'Dhull',location: 'Ambala',profile: 25,role: 'Software Engineer',),
              Pcard(firstName: 'Rahul',lastName: 'Devraj',location: 'Noida',profile: 44,role: 'Software Engineer',),
              Pcard(firstName: 'Suresh',lastName: 'Noob',location: 'Randomnagar',profile: 15,role: 'Software Engineer',),
            ],
          )
        ],   
      ),
    );
  }
}
