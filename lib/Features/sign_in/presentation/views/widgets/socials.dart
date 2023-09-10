import 'package:flutter/material.dart';

import './social_card.dart';

class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          icon: 'assets/icons/google-icon.svg',
          onTap: () {},
        ),
        SocialCard(
          icon: 'assets/icons/facebook-2.svg',
          onTap: () {},
        ),
        SocialCard(
          icon: 'assets/icons/twitter.svg',
          onTap: () {},
        ),
      ],
    );
  }
}
