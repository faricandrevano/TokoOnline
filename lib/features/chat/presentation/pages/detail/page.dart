import 'package:flutter/material.dart';
import 'package:shamo_mobile/app/config.dart';
import 'package:shamo_mobile/core/core.dart';

part 'sections/heading_section.dart';
part 'sections/product_section.dart';
part 'sections/sender_section.dart';
part 'sections/receiver_section.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  static const String routeName = '/chat/detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: _HeadingSection(key: key),
        ),
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.all(Dimens.dp16),
              children: [
                _SenderSection(key: key),
                Dimens.dp16.height,
                _ReceiverSection(key: key),
              ],
            ),
            ProductSection(key: key),
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimens.dp16),
              child: Row(
                children: [
                  const Expanded(
                    child: RegularInput(
                      hintText: 'Type Message',
                    ),
                  ),
                  Dimens.dp8.width,
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send_rounded,
                      color: context.theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
