import 'package:edorock/constants/colors_constants.dart';
import 'package:edorock/constants/sizing_utils_constants.dart';
import 'package:flutter/material.dart';

class ProductCardHome extends StatelessWidget {
  const ProductCardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            child: Image.asset(
              "assets/1.png",
              fit: BoxFit.fill,
              height: 130,
              width: 150,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: defaultPadding * 0.6),
            child: Text(
              "If you are a Developers or love programming. You're going to love this T-Shirts to wear!",
              style: TextStyle(
                fontSize: 12,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: defaultPadding * 0.6),
            child: Text(
              "Price: 1000",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: ColorsConstants.primaryColor),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}