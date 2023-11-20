import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:to_do_list/assets/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_list/extensions/context_ext.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.numberOfProducts,
    required this.listName,
  });
  final int numberOfProducts;
  final String listName;

  @override
  Widget build(context) {
    return Column(
      children: [
        Container(
          width: 325,
          height: 115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.themeData.colorScheme.primary,
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 17,
              ),
              child: Text(
                listName,
                style: context.themeData.textTheme.titleLarge,
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
                            color: context.themeData.colorScheme.secondary,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '$numberOfProducts',
                            style: context.themeData.textTheme.titleSmall,
                          ),
                        ),
                  Text(
                      (numberOfProducts == 0)
                          ? context.strings.noProductsItems
                          : context.strings.productsItems,
                      style: context.themeData.textTheme.bodySmall),
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
