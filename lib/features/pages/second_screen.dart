import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/routes_utils.dart';
import '../../core/widgets/custom_appbar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(PAGES.second.appbarTitle),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Second Page',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headlineLarge!.fontSize,
                color: Theme.of(context).textTheme.headlineLarge!.color,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: paragraphSpacing,
            ),
            Text(
              'This is another example of a paragraph text.',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
