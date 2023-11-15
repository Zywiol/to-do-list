import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:to_do_list/extensions/context_ext.dart';
import 'package:to_do_list/extensions/theme_colors_ext.dart';
import 'package:to_do_list/widgets/list_card.dart';
import 'package:to_do_list/widgets/recomendation_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:to_do_list/assets/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    final customColors = context.themeData.extension<CustomColors>()!;

    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: context.themeData.colorScheme.background,
          ),
          child: Column(
            children: [
              const Gap(55),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: _TextAndProfile(
                  customColors: customColors,
                ),
              ),
              const Gap(14),
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: _ListViewSizedBox(),
              ),
              const Gap(27),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 16,
                ),
                child: _RecomendationTextRow(
                  string: context.strings,
                  themeData: context.themeData,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Gap(11),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 28,
                    ),
                    child: _RecomendationSizedBox(),
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
                  child: _AddButton(
                    themeData: context.themeData,
                    string: context.strings,
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

class _TextAndProfile extends StatelessWidget {
  const _TextAndProfile({
    super.key,
    required this.customColors,
  });

  final CustomColors customColors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.strings.myList,
          style: context.themeData.textTheme.headlineLarge,
        ),
        const Gap(192),
        _ProfileContainer(customColors: customColors),
      ],
    );
  }
}

class _ProfileContainer extends StatelessWidget {
  const _ProfileContainer({
    super.key,
    required this.customColors,
  });

  final CustomColors customColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: customColors.profileBackground,
        shape: BoxShape.circle,
      ),
      child: Image.asset(AppImages.profilePhoto, width: 40, height: 40),
    );
  }
}

class _ListViewSizedBox extends StatelessWidget {
  const _ListViewSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

class _RecomendationTextRow extends StatelessWidget {
  const _RecomendationTextRow({
    super.key,
    required this.string,
    required this.themeData,
  });

  final AppLocalizations string;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.strings.recommendation,
          style: context.themeData.textTheme.titleLarge,
        ),
        const Gap(98),
        Text(
          context.strings.viewAll,
          style: context.themeData.textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _RecomendationSizedBox extends StatelessWidget {
  const _RecomendationSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

class _AddButton extends StatelessWidget {
  const _AddButton({
    super.key,
    required this.themeData,
    required this.string,
  });

  final ThemeData themeData;
  final AppLocalizations string;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          context.themeData.colorScheme.secondary,
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
            context.strings.addList,
            style: context.themeData.textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
