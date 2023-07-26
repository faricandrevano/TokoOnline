part of '../page.dart';

class _ProfileSection extends StatelessWidget {
  const _ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.dp16,
        vertical: Dimens.dp42,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText('Hallo, Alex'),
                RegularText('@dsfdsfdsf'),
              ],
            ),
          ),
          SmartNetworkImage(
            AppConfig.profileUrl,
            width: 54,
            height: 54,
            radius: BorderRadius.circular(Dimens.dp100),
          ),
        ],
      ),
    );
  }
}
