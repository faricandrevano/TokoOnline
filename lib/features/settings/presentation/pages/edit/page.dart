import 'package:flutter/material.dart';
import 'package:shamo_mobile/app/config.dart';
import 'package:shamo_mobile/core/core.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  static const String routeName = '/profile/edit';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: ListView(
        padding: const EdgeInsets.all(Dimens.dp16),
        children: [
          Column(
            children: [
              SmartNetworkImage(
                AppConfig.profileUrl,
                width: 100,
                height: 100,
                radius: BorderRadius.circular(Dimens.dp100),
                fit: BoxFit.cover,
              ),
              Dimens.dp16.height,
            ],
          ),
          Column(
            children: [
              const RegularInput(
                label: 'Name',
              ),
              Dimens.dp16.height,
              const RegularInput(
                label: 'Username',
              ),
              Dimens.dp16.height,
              const RegularInput(
                label: 'Email Address',
              ),
              Dimens.dp16.height,
              const RegularInput(
                label: 'Phone Number',
              ),
            ],
          ),
          Dimens.dp32.height,
        ],
      ),
    );
  }
}
