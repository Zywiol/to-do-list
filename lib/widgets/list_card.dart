import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/utils/my_colors.dart';
import 'package:to_do_list/widgets/products_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.numberOfProducts,
    required this.myShopListCount,
  });
  final int numberOfProducts;
  final int myShopListCount;

  @override
  Widget build(context) {
    return Column(
      children: [
        Container(
          width: 325,
          height: 115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: MyColors().white,
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 17,
              ),
              child: Text(
                AppLocalizations.of(context).myShopList + '$myShopListCount',
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
                  (numberOfProducts == 0)
                      ? Container()
                      : Container(
                          width: 31,
                          height: 31,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: MyColors().primary,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '$numberOfProducts',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              color: MyColors().white,
                            ),
                          ),
                        ),
                  Text(
                    (numberOfProducts == 0)
                        ? AppLocalizations.of(context).noProductsItems
                        : AppLocalizations.of(context).productsItems,
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
