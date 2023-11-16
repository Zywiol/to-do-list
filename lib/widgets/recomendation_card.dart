import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:to_do_list/extensions/context_ext.dart';

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({super.key, required this.imageLink});

  final String imageLink;
  @override
  Widget build(context) {
    return Row(
      children: [
        Container(
          width: 145,
          height: 144,
          decoration: BoxDecoration(
            color: context.themeData.colorScheme.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  left: 12,
                ),
                child: Container(
                  width: 44,
                  height: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: context.themeData.colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset(
                    imageLink,
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 107,
                  left: 12,
                  bottom: 20,
                ),
                child: Text(
                  'Lorem ipsum',
                  style: context.themeData.textTheme.titleMedium,
                ),
              )
            ],
          ),
        ),
        const Gap(13)
      ],
    );
  }
}
