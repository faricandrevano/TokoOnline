import 'package:flutter/material.dart';
import 'package:shamo_mobile/app/config.dart';
import 'package:shamo_mobile/core/core.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Message Support')),
      body: ListView.separated(
        padding: const EdgeInsets.all(Dimens.dp16),
        itemBuilder: (context, index) => Row(
          children: [
            SmartNetworkImage(
              AppConfig.profileUrl,
              width: 54,
              height: 54,
              radius: BorderRadius.circular(Dimens.dp100),
              fit: BoxFit.cover,
            ),
            Dimens.dp12.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RegularText.mediumSolid(context, 'Shoe Store'),
                  const RegularText(
                    'Good night, This item is on sdfsdf',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Dimens.dp12.width,
            const RegularText(
              'Now',
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
        separatorBuilder: (context, index) => const Divider(height: 32),
        itemCount: 5,
      ),
    );
  }
}
