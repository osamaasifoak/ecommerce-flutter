import 'package:edorock/constants/assets_constants.dart';
import 'package:edorock/constants/colors_constants.dart';
import 'package:edorock/constants/sizing_utils_constants.dart';
import 'package:flutter/material.dart';

class MobileAppbarComponent extends StatelessWidget {
  const MobileAppbarComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsConstants.appLogoWithName,
          width: 200,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            const Icon(Icons.shopping_cart_outlined),
            Positioned(
              right: -10,
              top: -30,
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorsConstants.primaryColor),
                padding: const EdgeInsets.all(defaultPadding * 0.45),
                child: const Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                        fontSize: 12, color: ColorsConstants.secondaryColor),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
