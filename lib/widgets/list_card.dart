import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:to_do_list/assets/app_images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.numberOfProducts,
    required this.count,
  });
  final int numberOfProducts;
  final int count;

  @override
  Widget build(context) {
    final string = AppLocalizations.of(context);
    final themesData = Theme.of(context);
    return Column(
      children: [
        Container(
          width: 325,
          height: 115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: themesData.colorScheme.primary,
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 17,
              ),
              child: Text(
                string.myShopList + '$count',
                style: themesData.textTheme.titleLarge,
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
                  (numberOfProducts == 0)
                      ? Container()
                      : Container(
                          width: 31,
                          height: 31,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: themesData.colorScheme.secondary,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '$numberOfProducts',
                            style: themesData.textTheme.titleSmall,
                          ),
                        ),
                  Text(
                      (numberOfProducts == 0)
                          ? string.noProductsItems
                          : string.productsItems,
                      style: themesData.textTheme.bodySmall),
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
                child: Container(
                  width: 112,
                  height: 95,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        AppImages.productsFrame,
                      ),
                    ],
                  ),
                ))
          ]),
        ),
        Gap(12)
      ],
    );
  }
}
