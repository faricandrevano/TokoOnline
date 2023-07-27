import 'package:flutter/material.dart';
import 'package:shamo_mobile/core/core.dart';
import 'package:shamo_mobile/features/cart/cart.dart';

part 'sections/product_section.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  static const String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart')),
      body: ListView.separated(
        padding: const EdgeInsets.all(Dimens.dp16),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp16,
            vertical: Dimens.dp10,
          ),
          decoration: BoxDecoration(
            color: context.theme.cardColor,
            borderRadius: BorderRadius.circular(Dimens.dp16),
          ),
          child: Column(
            children: [
              _ProductSection(key: key),
              Dimens.dp12.height,
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      size: 16,
                      color: context.theme.colorScheme.error,
                    ),
                    RegularText(
                      'Remove',
                      style: TextStyle(
                        fontSize: 12,
                        color: context.theme.colorScheme.error,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => Dimens.dp16.height,
        itemCount: 3,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Dimens.dp16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RegularText('Subtotal'),
                SubTitleText(
                  'Rp12,234',
                  style: TextStyle(color: context.theme.primaryColor),
                ),
              ],
            ),
            Dimens.dp32.height,
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, CheckoutPage.routeName);
              },
              child: const Text('Continue to Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
