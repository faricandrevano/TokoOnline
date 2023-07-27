part of '../page.dart';

class _FamiliarSection extends StatelessWidget {
  const _FamiliarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(Dimens.dp8),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [1, 2, 3, 4, 5, 6, 7].map(
          (i) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.dp8),
              child: SmartNetworkImage(
                'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cec4b036-00b4-4c40-a40f-f3459b640fc6/revolution-6-mens-running-shoes-extra-wide-qP3nkM.png',
                width: 54,
                height: 54,
                fit: BoxFit.cover,
                radius: BorderRadius.circular(Dimens.dp6),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
