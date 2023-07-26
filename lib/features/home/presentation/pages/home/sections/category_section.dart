part of '../page.dart';

class _CategorySection extends StatelessWidget {
  const _CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(Dimens.dp8),
          child: Row(
            children: [1, 2, 3, 4, 5]
                .map(
                  (e) => Container(
                    margin: const EdgeInsets.all(Dimens.dp8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.dp12,
                      vertical: Dimens.dp10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.dp12),
                      border: Border.all(color: context.theme.dividerColor),
                    ),
                    child: const RegularText('All Shoes'),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
