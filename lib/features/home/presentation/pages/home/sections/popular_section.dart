part of '../page.dart';

class _PopularSection extends StatelessWidget {
  const _PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
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
                children: state.popularProducts
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            ProductPage.routeName,
                            arguments: e.id,
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
                              SmartNetworkImage(
                                e.galleries.first,
                                width: double.infinity,
                                height: 140,
                                radius: const BorderRadius.vertical(
                                  top: Radius.circular(Dimens.dp16),
                                ),
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(Dimens.dp16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RegularText(e.category.name),
                                    Dimens.dp6.height,
                                    SubTitleText(
                                      e.name,
                                      maxLine: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Dimens.dp6.height,
                                    RegularText(
                                      e.price.toIDR(),
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
      },
    );
  }
}
