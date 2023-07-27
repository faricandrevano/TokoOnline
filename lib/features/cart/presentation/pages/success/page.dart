import 'package:flutter/material.dart';
import 'package:shamo_mobile/core/core.dart';
import 'package:shamo_mobile/features/home/home.dart';
import 'package:shamo_mobile/features/transaction/transaction.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({super.key});

  static const String routeName = '/checkout/success';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamedAndRemoveUntil(
          context,
          MainPage.routeName,
          (route) => false,
        );
        return false;
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    MainPage.routeName,
                    (route) => false,
                  );
                },
                child: const Text('Order Other Shoes'),
              ),
              Dimens.dp16.height,
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, TransactionPage.routeName);
                },
                child: const Text('View My Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
