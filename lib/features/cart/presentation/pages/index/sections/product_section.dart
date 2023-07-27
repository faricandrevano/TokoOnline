part of '../page.dart';

class _ProductSection extends StatelessWidget {
  const _ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Column(
          children: [
            _buildButton(context, isIncrement: true),
            Dimens.dp2.height,
            RegularText.mediumSolid(context, '2'),
            Dimens.dp2.height,
            _buildButton(context),
          ],
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context, {bool isIncrement = false}) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(Dimens.dp2),
        decoration: BoxDecoration(
          color: isIncrement
              ? context.theme.primaryColor
              : context.theme.scaffoldBackgroundColor,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.add_rounded, size: 16),
      ),
    );
  }
}
