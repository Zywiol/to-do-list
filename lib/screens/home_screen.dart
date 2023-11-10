import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/utils/my_colors.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: MyColors().backgroundLight,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 55, right: 20),
                child: Row(
                  children: [
                    Text(
                      'My List',
                      style: GoogleFonts.poppins(
                          color: MyColors().dark,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          height: 1.5),
                    ),
                    Gap(192),
                    Image.asset(
                      'assets/photo.png',
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 14,
                  left: 25,
                  right: 25,
                ),
                child: Container(
                  color: MyColors().black,
                  height: 369,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 27,
                  left: 25,
                  right: 16,
                ),
                child: Row(
                  children: [
                    Text(
                      'Recommendation',
                      style: GoogleFonts.poppins(
                          color: MyColors().black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.5),
                    ),
                    Gap(98),
                    Text(
                      'View All',
                      style: GoogleFonts.poppins(
                          color: MyColors().bodyFont,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          height: 1.5),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 11.0,
                      left: 28,
                    ),
                    child: Container(
                      color: MyColors().black,
                      width: 350,
                      height: 159,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 104, top: 14, right: 102, bottom: 33),
                child: SizedBox(
                  width: 169,
                  height: 58,
                  child: FilledButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 30,
                        ),
                        Gap(21),
                        Text(
                          'Add list',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.5),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyColors().primary)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}