part of '../page.dart';

class _PopularSection extends StatelessWidget {
  const _PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(Dimens.dp16),
          child: HeadingText('Popular Products'),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp8,
          ),
          child: Row(
            children: [1, 2, 3, 4, 5]
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ProductPage.routeName,
                        arguments: 'id',
                      );
                    },
                    child: Container(
                      width: 215,
                      height: 280,
                      margin: const EdgeInsets.all(Dimens.dp8),
                      decoration: BoxDecoration(
                        color: context.theme.cardColor,
                        borderRadius: BorderRadius.circular(Dimens.dp16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(Dimens.dp16),
                            ),
                            child: SmartNetworkImage(
                              AppConfig.profileUrl,
                              width: double.infinity,
                              height: 140,
                              radius: BorderRadius.zero,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(Dimens.dp16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const RegularText('Hiking'),
                                Dimens.dp6.height,
                                const SubTitleText(
                                  'COURT VISION 2.0',
                                  maxLine: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Dimens.dp6.height,
                                RegularText(
                                  'Rp58,67',
                                  style: TextStyle(
                                    color: context.theme.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
