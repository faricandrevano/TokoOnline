part of '../page.dart';

class _ItemSection extends StatelessWidget {
  const _ItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubTitleText('List Items'),
        Dimens.dp8.height,
        _buildCard(context),
        _buildCard(context),
      ],
    );
  }

  Widget _buildCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.dp16),
      margin: const EdgeInsets.only(bottom: Dimens.dp8),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: BorderRadius.circular(Dimens.dp16),
      ),
      child: Row(
        children: [
          SmartNetworkImage(
            'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cec4b036-00b4-4c40-a40f-f3459b640fc6/revolution-6-mens-running-shoes-extra-wide-qP3nkM.png',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            radius: BorderRadius.circular(Dimens.dp16),
          ),
          Dimens.dp12.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegularText.mediumSolid(
                  context,
                  'Terrex Urban Low',
                  maxLine: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                RegularText(
                  'Rp123,876',
                  style: TextStyle(color: context.theme.primaryColor),
                ),
              ],
            ),
          ),
          Dimens.dp8.width,
          const RegularText('1 Items')
        ],
      ),
    );
  }
}
