part of '../page.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        margin: const EdgeInsets.all(Dimens.dp16),
        padding: const EdgeInsets.all(Dimens.dp10),
        constraints: const BoxConstraints(
          maxHeight: 74,
          maxWidth: 225,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: context.theme.primaryColor),
          borderRadius: BorderRadius.circular(Dimens.dp16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmartNetworkImage(
              AppConfig.profileUrl,
              radius: BorderRadius.circular(Dimens.dp12),
              fit: BoxFit.cover,
            ),
            Dimens.dp10.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RegularText(
                    'Court Material sdfds',
                    maxLine: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  SubTitleText(
                    'Rp12,534',
                    style: TextStyle(color: context.adaptiveTheme.primaryColor),
                  ),
                ],
              ),
            ),
            Dimens.dp8.width,
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.cancel_rounded,
                color: context.theme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
