import 'package:flutter/material.dart';
import 'package:shamo_mobile/app/config.dart';
import 'package:shamo_mobile/core/core.dart';

part 'sections/category_section.dart';
part 'sections/profile_section.dart';
part 'sections/popular_section.dart';
part 'sections/new_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.theme.scaffoldBackgroundColor,
            expandedHeight: 160,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: _ProfileSection(key: key),
              titlePadding: EdgeInsets.zero,
              expandedTitleScale: 1,
              title: _CategorySection(key: key),
            ),
          ),
          SliverToBoxAdapter(
            child: _PopularSection(key: key),
          ),
          SliverToBoxAdapter(
            child: _NewSection(key: key),
          ),
        ],
      ),
    );
  }
}
