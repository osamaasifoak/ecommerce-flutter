import 'package:edorock/constants/assets_constants.dart';
import 'package:edorock/constants/colors_constants.dart';
import 'package:edorock/constants/sizing_utils_constants.dart';
import 'package:edorock/utils/responsive.dart';
import 'package:flutter/material.dart';

class WebAppbarComponent extends StatelessWidget {
  const WebAppbarComponent({
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
        Wrap(
          children: [
            if (Responsive.isDesktop(context))
              Row(
                children: const [
                  Icon(Icons.person),
                  SizedBox(width: defaultPadding),
                ],
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
                            fontSize: 12,
                            color: ColorsConstants.secondaryColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
