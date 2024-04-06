import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Pcard extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String location;
  final String role;
  final int profile;

  const Pcard({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.location,
    required this.role,
    required this.profile,
  }) : super(key: key);

  @override
  State<Pcard> createState() => _PcardState();
}

class _PcardState extends State<Pcard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: BouncingScrollSimulation.maxSpringTransferVelocity,
          decoration: BoxDecoration(
            color: Colors.blueGrey[20],
            border:
                Border.all(color: const Color.fromARGB(64, 4, 71, 109), width: 1.5),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeightBox(7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      "${widget.firstName} ${widget.lastName}"
                          .text
                          .size(20)
                          .color(const Color.fromARGB(255, 1, 36, 56))
                          .textStyle(GoogleFonts.poppins())
                          .semiBold
                          .make(),
                      "Invite"
                          .text
                          .size(18)
                          .color(const Color.fromARGB(255, 1, 36, 56))
                          .textStyle(GoogleFonts.poppins())
                          .semiBold
                          .make(),
                    ],
                  ),
                  const HeightBox(7),
                  "${widget.location} | ${widget.role}"
                      .text
                      .size(12)
                      .color(const Color.fromARGB(144, 0, 41, 64))
                      .textStyle(GoogleFonts.poppins())
                      .semiBold
                      .make(),
                  "Profile Score - ${widget.profile}"
                      .text
                      .size(12)
                      .color(const Color.fromARGB(158, 0, 41, 64))
                      .textStyle(GoogleFonts.poppins())
                      .semiBold
                      .make(),
                ],
              ).pOnly(left: 70),
              const HeightBox(12),
              "Coffee☕ | Business👨‍💼 | FriendShip😄"
                  .text
                  .size(12)
                  .semiBold
                  .color(const Color.fromARGB(190, 109, 91, 0))
                  .textStyle(GoogleFonts.poppins())
                  .make()
                  .px16(),
              const HeightBox(5),
              "Hey friends! I am looking for new connections on NetClan!"
                  .text
                  .size(12)
                  .semiBold
                  .color(const Color.fromARGB(158, 0, 41, 64))
                  .textStyle(GoogleFonts.poppins())
                  .make()
                  .px16()
                  .pOnly(right: 40),
              const HeightBox(10),
            ],
          ),
        ).pOnly(left: 30, top: 15),
        Positioned(
          child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: Vx.gray400,
              borderRadius: BorderRadius.circular(12),
            ),
            child: "${widget.firstName[0]}${widget.lastName[0]}"
                .text
                .semiBold
                .size(35)
                .makeCentered(),
          ),
        )
      ],
    ).px12().pOnly(bottom: 15);
  }
}
