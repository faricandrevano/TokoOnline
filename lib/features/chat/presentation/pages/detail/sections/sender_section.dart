part of '../page.dart';

class _SenderSection extends StatelessWidget {
  const _SenderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp16,
            vertical: Dimens.dp12,
          ),
          margin: const EdgeInsets.only(bottom: Dimens.dp12),
          constraints: const BoxConstraints(
            maxHeight: 155,
            maxWidth: 230,
          ),
          decoration: BoxDecoration(
            color: context.theme.cardColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Dimens.dp16),
              bottomLeft: Radius.circular(Dimens.dp16),
              bottomRight: Radius.circular(Dimens.dp16),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SmartNetworkImage(
                    AppConfig.profileUrl,
                    width: 65,
                    height: 65,
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
                          maxLine: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        RegularText(
                          'Rp12,534',
                          style: TextStyle(
                            color: context.adaptiveTheme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Add'),
                  )),
                  Dimens.dp8.width,
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Buy'),
                  )),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp16,
            vertical: Dimens.dp12,
          ),
          decoration: BoxDecoration(
            color: context.theme.cardColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Dimens.dp16),
              bottomLeft: Radius.circular(Dimens.dp16),
              bottomRight: Radius.circular(Dimens.dp16),
            ),
          ),
          child: const RegularText(
            'Hi, This item is still available?',
          ),
        ),
      ],
    );
  }
}
