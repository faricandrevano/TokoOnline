import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shamo_mobile/core/core.dart';

part 'sections/flexible_section.dart';
part 'sections/title_section.dart';
part 'sections/price_section.dart';
part 'sections/familiar_section.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.id});
  final String id;

  static const String routeName = '/product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.adaptiveTheme.solidTextColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.adaptiveTheme.solidTextColor,
            automaticallyImplyLeading: false,
            toolbarHeight: Dimens.height(context) / 3,
            flexibleSpace: _FlexibleSpace(key: key),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: context.theme.scaffoldBackgroundColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(Dimens.dp16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Dimens.dp16),
                    child: _TitleSection(key: key),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Dimens.dp16),
                    child: _PriceSection(key: key),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(Dimens.dp16),
                    child: SubTitleText('Description'),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimens.dp16),
                    child: RegularText(
                      'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(Dimens.dp16),
                    child: SubTitleText('Familiar Shoes'),
                  ),
                  _FamiliarSection(key: key),
                  Padding(
                    padding: const EdgeInsets.all(Dimens.dp16),
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: const Icon(CupertinoIcons.chat_bubble_2_fill),
                        ),
                        Dimens.dp16.width,
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Add to Cart'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
