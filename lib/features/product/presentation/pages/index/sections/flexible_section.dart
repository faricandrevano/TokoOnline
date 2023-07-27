part of '../page.dart';

class _FlexibleSpace extends StatefulWidget {
  const _FlexibleSpace({super.key});

  @override
  State<_FlexibleSpace> createState() => _FlexibleSpaceState();
}

class _FlexibleSpaceState extends State<_FlexibleSpace> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      centerTitle: true,
      expandedTitleScale: 1,
      background: CarouselSlider(
        carouselController: _controller,
        options: CarouselOptions(
          height: Dimens.height(context) / 2.6,
          autoPlay: true,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        items: [1, 2, 3, 4, 5].map(
          (i) {
            return SmartNetworkImage(
              'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cec4b036-00b4-4c40-a40f-f3459b640fc6/revolution-6-mens-running-shoes-extra-wide-qP3nkM.png',
              width: Dimens.width(context),
              height: Dimens.height(context) / 2.6,
              fit: BoxFit.cover,
              radius: BorderRadius.zero,
            );
          },
        ).toList(),
      ),
      title: Column(
        children: [
          Dimens.dp32.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: context.theme.scaffoldBackgroundColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag_rounded,
                  color: context.theme.scaffoldBackgroundColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [1, 2, 3, 4, 5]
                .asMap()
                .entries
                .map(
                  (e) => Container(
                    width: _current == e.key ? Dimens.dp16 : Dimens.dp4,
                    height: Dimens.dp4,
                    margin: const EdgeInsets.symmetric(horizontal: Dimens.dp2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.dp4),
                      color: _current == e.key
                          ? context.theme.primaryColor
                          : context.theme.disabledColor,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
