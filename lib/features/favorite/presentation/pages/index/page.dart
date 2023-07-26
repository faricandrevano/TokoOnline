import 'package:flutter/material.dart';
import 'package:shamo_mobile/app/config.dart';
import 'package:shamo_mobile/core/core.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Shoes')),
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
          child: Row(
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
                    RegularText(
                      'Rp12,434',
                      style: TextStyle(color: context.theme.primaryColor),
                    ),
                  ],
                ),
              ),
              Dimens.dp12.width,
              Container(
                padding: const EdgeInsets.all(Dimens.dp8),
                decoration: BoxDecoration(
                  color: context.theme.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.favorite_rounded, size: 18),
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
