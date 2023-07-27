part of '../page.dart';

class _HeadingSection extends StatelessWidget {
  const _HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmartNetworkImage(
          AppConfig.profileUrl,
          width: 50,
          height: 50,
          radius: BorderRadius.circular(Dimens.dp100),
          fit: BoxFit.cover,
        ),
        Dimens.dp12.width,
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubTitleText('Shoe Store'),
              RegularText('test@gmail.com'),
            ],
          ),
        ),
      ],
    );
  }
}
