import 'package:expenses_tracker/core/theming/fonts.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'By continuing, you agree to our Terms\n of Use and Privacy Policy',
        style: FontHelper.font13GreyW300,
        textAlign: TextAlign.center,
      ),
    );
  }
}
