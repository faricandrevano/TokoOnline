import 'package:flutter/material.dart';
import 'package:shamo_mobile/core/core.dart';
import 'package:shamo_mobile/features/cart/cart.dart';

part 'sections/summary_section.dart';
part 'sections/item_section.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  static const String routeName = '/cart/checkout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout Details')),
      body: ListView(
        padding: const EdgeInsets.all(Dimens.dp16),
        children: [
          _ItemSection(key: key),
          Dimens.dp16.height,
          const RegularInput(
            prefixIcon: Icons.location_on_rounded,
            label: 'Address Details',
            hintText: 'Your Address',
          ),
          Dimens.dp32.height,
          _SummarySection(key: key),
          Dimens.dp32.height,
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Dimens.dp16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              SuccessCheckoutPage.routeName,
              (route) => false,
            );
          },
          child: const Text('Checkout Now'),
        ),
      ),
    );
  }
}
