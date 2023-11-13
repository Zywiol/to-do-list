import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({super.key, required this.imageLink});

  final String imageLink;
  @override
  Widget build(context) {
    final themesData = Theme.of(context);
    return Row(
      children: [
        Container(
          width: 145,
          height: 144,
          decoration: BoxDecoration(
            color: themesData.colorScheme.primary,
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
                    color: themesData.colorScheme.secondary,
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
                  style: themesData.textTheme.titleMedium,
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
