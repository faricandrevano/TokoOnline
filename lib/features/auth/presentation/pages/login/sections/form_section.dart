part of '../page.dart';

class _FormSection extends StatelessWidget {
  const _FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (Dimens.height(context) / 10).height,
        const RegularInput(
          label: 'Email Address',
          prefixIcon: Icons.email_rounded,
          hintText: 'Your Email Address',
        ),
        Dimens.dp16.height,
        const PasswordInput(
          label: 'Password',
          hintText: 'Your Password',
        ),
        Dimens.dp32.height,
        ElevatedButton(
          onPressed: () {},
          child: const Text('Sign In'),
        ),
        Dimens.dp32.height,
      ],
    );
  }
}
