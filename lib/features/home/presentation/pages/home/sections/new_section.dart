part of '../page.dart';

class _NewSection extends StatelessWidget {
  const _NewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(Dimens.dp16),
          child: HeadingText('New Arrival'),
        ),
        ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp16,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Row(
            children: [
              SmartNetworkImage(
                AppConfig.profileUrl,
                width: 120,
                height: 120,
                radius: BorderRadius.circular(Dimens.dp16),
                fit: BoxFit.cover,
              ),
              Dimens.dp12.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RegularText('Hiking'),
                    Dimens.dp6.height,
                    const SubTitleText(
                      'asdfsafasf',
                      maxLine: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Dimens.dp6.height,
                    RegularText(
                      'Rp12,545',
                      style: TextStyle(
                        color: context.theme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          separatorBuilder: (context, index) => Dimens.dp30.height,
          itemCount: 5,
        ),
        Dimens.dp32.height,
      ],
    );
  }
}
