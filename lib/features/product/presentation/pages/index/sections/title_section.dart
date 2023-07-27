part of '../page.dart';

class _TitleSection extends StatelessWidget {
  const _TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubTitleText(
                'TERREX URBAN LOW',
                style: TextStyle(fontSize: 18),
              ),
              RegularText('Hiking'),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(Dimens.dp8),
          decoration: BoxDecoration(
            color: context.theme.primaryColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.favorite_rounded, size: 18),
        ),
      ],
    );
  }
}
