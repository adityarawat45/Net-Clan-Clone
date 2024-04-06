import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netclan_clone/pages/Business.dart';
import 'package:netclan_clone/pages/Location.dart';
import 'package:netclan_clone/pages/Personal.dart';
import 'package:netclan_clone/pages/refine.dart';
import 'package:velocity_x/velocity_x.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
          backgroundColor: Vx.white,
          appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            backgroundColor: const Color.fromARGB(255, 2, 43, 66),
            leadingWidth: BouncingScrollSimulation.maxSpringTransferVelocity,
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Howdy User RandomGuy123!!"
                    .text
                    .textStyle(GoogleFonts.poppins())
                    .color(Vx.white)
                    .semiBold
                    .size(16)
                    .make(),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Vx.white,
                      size: 18,
                    ),
                    const SizedBox(width: 4),
                    "Location"
                        .text
                        .normal
                        .textStyle(GoogleFonts.poppins())
                        .color(Vx.white)
                        .size(14)
                        .make(),
                  ],
                ),
              ],
            ).pOnly(left: 15, right: 16, bottom: 4, top: 4),
            actions: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Refine()));
                  });
                },
                child: Stack(alignment: Alignment.center, children: [
                  const Icon(Icons.checklist_rounded, color: Vx.white, size: 35)
                      .pOnly(bottom: 10, right: 5, left: 5),
                  Positioned(
                    top: 25,
                    child: "Refine"
                        .text
                        .fontWeight(FontWeight.w500)
                        .textStyle(GoogleFonts.poppins())
                        .size(14)
                        .color(Vx.white)
                        .make(),
                  ),
                ]),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size(
                BouncingScrollSimulation.maxSpringTransferVelocity,
                50,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 1, 50, 79),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25) ,
                    bottomRight: Radius.circular(25),
                  )
                ),
                child: TabBar(
                    overlayColor: const MaterialStatePropertyAll(
                        Color.fromARGB(0, 255, 251, 235)),
                    labelColor: Vx.white,
                    unselectedLabelColor: Vx.white,
                    indicatorColor: Vx.white,
                    indicatorWeight: 5,
                    labelStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                    tabs: const [
                      Tab(
                        text: "Personal",
                      ),
                      Tab(
                        text: "Location",
                      ),
                      Tab(
                        text: "Business",
                      ),
                    ]),
              ),
            ),
          ),
          body: const TabBarView(children: [
            Personal(),
            Location(),
            Business(),
          ])),
    );
  }
}
