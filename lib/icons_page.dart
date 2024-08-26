import 'package:flutter/material.dart';
import 'package:theme_switch_bloc/icons/app_icons.dart';
import 'package:vector_graphics/vector_graphics.dart';

class IconsPage extends StatefulWidget {
  const IconsPage({super.key});

  @override
  State<IconsPage> createState() => _IconsPageState();
}

class _IconsPageState extends State<IconsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: AppIcons.icons.getMap().values.length,
        itemBuilder: (context, index) {
          return Center(
            child: Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Text('${index + 1}. '),
                    Text(AppIcons.icons.getMap().keys.toList()[index]),
                  ],
                )),
                Expanded(
                  child: VectorGraphic(
                    height: 70,
                    width: 70,
                    loader: AssetBytesLoader(
                      AppIcons.icons.getMap().values.toList()[index],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),

      //  Column(
      //   children: [
      //     Center(
      //       child: VectorGraphic(
      //         loader: AssetBytesLoader(AppIcons.icons.calendarMonthFilled),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
