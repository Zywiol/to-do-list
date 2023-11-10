import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/utils/my_colors.dart';
import 'package:to_do_list/widgets/products_container.dart';

class ListCard extends StatelessWidget {
  @override
  Widget build(context) {
    return Column(
      children: [
        Container(
          width: 325,
          height: 115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyColors().white,
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 17,
              ),
              child: Text(
                'My Shop list 1',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                bottom: 24,
                top: 70,
              ),
              child: Row(
                children: [
                  Container(
                    width: 31,
                    height: 31,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: MyColors().primary,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '5',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: MyColors().white),
                    ),
                  ),
                  Gap(7),
                  Text(
                    'Products Items',
                    style: GoogleFonts.poppins(
                      color: MyColors().bodyFont,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 205,
                top: 12,
                bottom: 8,
                right: 8,
              ),
              child: ProductsContainer(),
            )
          ]),
        ),
        Gap(12)
      ],
    );
  }
}
