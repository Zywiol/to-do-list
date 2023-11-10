import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductsContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      width: 112,
      height: 95,
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/products/Frame.svg',
          ),
        ],
      ),
    );
  }
}
