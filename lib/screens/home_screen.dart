import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:to_do_list/utils/my_colors.dart';
import 'package:to_do_list/widgets/list_card.dart';
import 'package:to_do_list/widgets/recomendation_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:to_do_list/assets/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            children: [
              const Gap(55),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context).myList,
                        style: Theme.of(context).textTheme.headlineLarge),
                    const Gap(192),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(239, 231, 255, 1),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(AppImages.profilePhoto,
                          width: 40, height: 40),
                    ),
                  ],
                ),
              ),
              const Gap(14),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: SizedBox(
                  height: 369,
                  width: 325,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: const [
                      ListCard(
                        numberOfProducts: 5,
                        count: 1,
                      ),
                      ListCard(
                        numberOfProducts: 5,
                        count: 2,
                      ),
                      ListCard(
                        numberOfProducts: 0,
                        count: 3,
                      ),
                      ListCard(
                        numberOfProducts: 5,
                        count: 4,
                      ),
                      ListCard(
                        numberOfProducts: 5,
                        count: 5,
                      ),
                      ListCard(
                        numberOfProducts: 5,
                        count: 6,
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(27),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 16,
                ),
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context).recommendation,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Gap(98),
                    Text(
                      AppLocalizations.of(context).viewAll,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Gap(11),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 28,
                    ),
                    child: SizedBox(
                      width: 350,
                      height: 159,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        children: [
                          RecomendationCard(imageLink: AppImages.pillsIcon),
                          RecomendationCard(imageLink: AppImages.travelIcon),
                          RecomendationCard(imageLink: AppImages.partyIcon),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(14),
              Padding(
                padding: const EdgeInsets.only(
                  left: 104,
                  right: 102,
                ),
                child: SizedBox(
                  width: 169,
                  height: 58,
                  child: FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        MyColors().primary,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          color: Theme.of(context).iconTheme.color,
                          Icons.add_circle,
                          size: 30,
                        ),
                        const Gap(21),
                        Text(
                          AppLocalizations.of(context).addList,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
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
