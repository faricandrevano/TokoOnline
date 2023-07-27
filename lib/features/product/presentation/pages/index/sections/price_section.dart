part of '../page.dart';

class _PriceSection extends StatelessWidget {
  const _PriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.dp16),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: BorderRadius.circular(Dimens.dp4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const RegularText('Price starts from'),
          SubTitleText(
            'Rp12,324',
            style: TextStyle(color: context.theme.primaryColor),
          ),
        ],
      ),
    );
  }
}
