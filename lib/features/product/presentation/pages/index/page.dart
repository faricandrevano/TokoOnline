import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamo_mobile/core/core.dart';
import 'package:shamo_mobile/features/cart/cart.dart';
import 'package:shamo_mobile/features/chat/chat.dart';
import 'package:shamo_mobile/features/product/product.dart';

part 'sections/flexible_section.dart';
part 'sections/title_section.dart';
part 'sections/price_section.dart';
part 'sections/familiar_section.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.id});
  final String id;

  static const String routeName = '/product';

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    context.read<DetailProductBloc>().add(GetDetailProductEvent(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.adaptiveTheme.solidTextColor,
        automaticallyImplyLeading: false,
        toolbarHeight: Dimens.height(context) / 3,
        flexibleSpace: _FlexibleSpace(key: widget.key),
      ),
      backgroundColor: context.adaptiveTheme.solidTextColor,
      body: Container(
        padding: const EdgeInsets.only(top: Dimens.dp16),
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(Dimens.dp16),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimens.dp16),
              child: _TitleSection(key: widget.key),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimens.dp16),
              child: _PriceSection(key: widget.key),
            ),
            const Padding(
              padding: EdgeInsets.all(Dimens.dp16),
              child: SubTitleText('Description'),
            ),
            BlocBuilder<DetailProductBloc, DetailProductState>(
              builder: (context, state) {
                if (state.status == DetailProductStateStatus.success) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Dimens.dp16),
                    child: RegularText(
                      state.product?.desc ?? '',
                      align: TextAlign.justify,
                    ),
                  );
                } else {
                  return _skeleton();
                }
              },
            ),
            Dimens.dp16.height,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimens.dp16),
              child: SubTitleText('Familiar Shoes'),
            ),
            _FamiliarSection(key: widget.key),
            Padding(
              padding: const EdgeInsets.all(Dimens.dp16),
              child: Row(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        DetailChatPage.routeName,
                      );
                    },
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
    );
  }

  SkeletonAnimation _skeleton() {
    return SkeletonAnimation(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.dp16),
        child: Column(
          children: [
            const Skeleton(width: double.infinity, height: Dimens.dp14),
            Dimens.dp4.height,
            const Skeleton(width: double.infinity, height: Dimens.dp14),
            Dimens.dp4.height,
            const Skeleton(width: double.infinity, height: Dimens.dp14),
            Dimens.dp4.height,
            const Skeleton(width: double.infinity, height: Dimens.dp14),
          ],
        ),
      ),
    );
  }
}
