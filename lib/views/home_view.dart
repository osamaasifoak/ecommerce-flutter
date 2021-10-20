import 'package:edorock/components/appbars/mobile_appbar_component.dart';
import 'package:edorock/components/appbars/web_appbar_component.dart';
import 'package:edorock/components/product_card/product_card_home_component.dart';
import 'package:edorock/constants/sizing_utils_constants.dart';
import 'package:edorock/constants/assets_constants.dart';
import 'package:edorock/utils/responsive.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: _size.height,
          width: _size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: WebAppbarComponent(),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    // height: _size.height,
                    width: _size.width,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: Responsive.isDesktop(context) ? 800 : 350,
                          child: PageView.builder(
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Image.asset(AssetsConstants.banner_1,
                                  width: _size.width,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high);
                            },
                          ),
                        ),
                        const SliderView(),
                        const SliderView(),
                        const SliderView(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SliderView extends StatelessWidget {
  const SliderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: defaultPadding * 0.7),
          child: Text(
            "Devs",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.only(left: defaultPadding * 0.7),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(
                      right: defaultPadding * 0.7, top: defaultPadding * 0.6),
                  child: ProductCardHome(),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
