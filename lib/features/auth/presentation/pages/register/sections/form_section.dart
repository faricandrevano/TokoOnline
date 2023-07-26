part of '../page.dart';

class _FormSection extends StatelessWidget {
  const _FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (Dimens.height(context) / 12).height,
        const RegularInput(
          label: 'Full Name',
          prefixIcon: Icons.person,
          hintText: 'Your Full Name',
        ),
        Dimens.dp16.height,
        const RegularInput(
          label: 'Username',
          prefixIcon: Icons.account_circle_rounded,
          hintText: 'Your Username',
        ),
        Dimens.dp16.height,
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
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              MainPage.routeName,
              (route) => false,
            );
          },
          child: const Text('Sign Up'),
        ),
        Dimens.dp32.height,
      ],
    );
  }
}
