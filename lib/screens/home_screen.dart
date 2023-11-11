import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/utils/my_colors.dart';
import 'package:to_do_list/widgets/list_card.dart';
import 'package:to_do_list/widgets/recomendation_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              const Gap(55),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context).myList,
                      style: GoogleFonts.poppins(
                        color: MyColors().dark,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                    const Gap(192),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(239, 231, 255, 1),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/photo.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(14),
              Padding(
                padding: const EdgeInsets.only(
                  right: 25,
                ),
                child: Container(
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
                      style: GoogleFonts.poppins(
                        color: MyColors().black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                    const Gap(98),
                    Text(
                      AppLocalizations.of(context).viewAll,
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
                        children: const [
                          RecomendationCard(imageLink: 'assets/pills.svg'),
                          RecomendationCard(imageLink: 'assets/travel.svg'),
                          RecomendationCard(imageLink: 'assets/party.svg'),
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
                        const Icon(
                          Icons.add_circle,
                          size: 30,
                        ),
                        const Gap(21),
                        Text(
                          AppLocalizations.of(context).addList,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
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
