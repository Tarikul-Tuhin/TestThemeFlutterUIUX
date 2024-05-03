import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/routes_utils.dart';
import '../../core/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(PAGES.home.appbarTitle),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Headline Text',
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.headlineLarge!.fontSize,
                    color: Theme.of(context).textTheme.headlineLarge!.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: paragraphSpacing,
                ),
                Text(
                  'This is an example of a paragraph text.',
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    color: Theme.of(context).textTheme.bodyMedium!.color,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: buttonGap,
            ),
            FilledButton(
              onPressed: () {
                context.push(PAGES.second.screenPath);
              },
              child: const Text('Navigate to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}
