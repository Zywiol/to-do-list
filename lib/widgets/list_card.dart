import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:to_do_list/utils/my_colors.dart';

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
        ),
        Gap(12)
      ],
    );
  }
}
