import 'package:flutter/material.dart';
import 'package:shamo_mobile/app/config.dart';
import 'package:shamo_mobile/core/core.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  static const String routeName = '/transaction';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Orders')),
      body: ListView.separated(
        padding: const EdgeInsets.all(Dimens.dp16),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp12,
            vertical: Dimens.dp10,
          ),
          decoration: BoxDecoration(
            color: context.theme.cardColor,
            borderRadius: BorderRadius.circular(Dimens.dp12),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SmartNetworkImage(
                    AppConfig.profileUrl,
                    width: 60,
                    height: 60,
                    radius: BorderRadius.circular(Dimens.dp12),
                    fit: BoxFit.cover,
                  ),
                  Dimens.dp12.width,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubTitleText('Shoe Store'),
                        RegularText.mediumSolid(
                          context,
                          'Rp12,434',
                          style: TextStyle(color: context.theme.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Dimens.dp8.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.dp8,
                      vertical: Dimens.dp2,
                    ),
                    decoration: BoxDecoration(
                      color: context.theme.primaryColor,
                      borderRadius: BorderRadius.circular(Dimens.dp50),
                    ),
                    child: RegularText.mediumSolid(context, 'Success'),
                  ),
                  const RegularText('1 Juli 2000'),
                ],
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => Dimens.dp16.height,
        itemCount: 5,
      ),
    );
  }
}
