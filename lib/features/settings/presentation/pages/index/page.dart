import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shamo_mobile/app/config.dart';
import 'package:shamo_mobile/core/core.dart';
import 'package:shamo_mobile/features/settings/settings.dart';
import 'package:shamo_mobile/features/transaction/transaction.dart';

part 'sections/heading_section.dart';
part 'sections/account_section.dart';
part 'sections/general_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(Dimens.dp16),
        children: [
          Dimens.dp24.height,
          _HeadingSection(key: key),
          Dimens.dp42.height,
          _AccountSection(key: key),
          Dimens.dp42.height,
          const _GeneralSection(),
          Dimens.dp42.height,
        ],
      ),
    );
  }
}
