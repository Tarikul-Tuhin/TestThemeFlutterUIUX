import 'package:flutter/material.dart';
import 'package:theme_switch_bloc/icons/app_icons.dart';
import 'package:theme_switch_bloc/icons_page.dart';
import 'package:theme_switch_bloc/preference_page.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/app_colors.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/colors_setter.dart';
import 'package:vector_graphics/vector_graphics.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> getColorList(AppColors appColors) {
    return [appColors.colorBorderBrandHighlighted];
  }

  @override
  Widget build(BuildContext context) {
    // List a = [];
    final colors = AppColors.of(context);
    print(colors.colorBorderBrandHighlighted);
    List<String> keys = colors.getColorsMap().keys.toList();
    List colorsList = colors.getColorsMap().values.toList();
    // colors.getColorsMap().forEach((keys, value) => {a.add(" '$keys': $value")});

    // log(jsonEncode(colors.getColorsMap().toString()));
    // log(a.toString());
    return Scaffold(
      appBar: AppBar(
        key: const Key('AppBar'),
        title: const Text('Home'),
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the PreferencePage

              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PreferencePage(),
              ));
            },
          )
        ],
      ),
      body: Column(
        children: [
          VectorGraphic(
            height: 70,
            width: 70,
            loader: AssetBytesLoader(
              AppIcons.icons.warningOutline,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: colorsList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () async {
                    await AppIcons.setIcons(data: 'yes');
                    await ColorsSetter.setLightAndDarkColors(data: 'yes');
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IconsPage()),
                    );
                    setState(() {});
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    color: colorsList[index],
                    child: Text(
                      '${keys[index]} : ${colorsList[index].toString()}',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class AppColors {
//   final Color primaryColor;
//   final Color secondaryColor;
//   final Color backgroundColor;
//   final Color textColor;
//   final Color containerColor;

//   AppColors({
//     required this.primaryColor,
//     required this.secondaryColor,
//     required this.backgroundColor,
//     required this.textColor,
//     required this.containerColor,
//   });

//   factory AppColors.light() {
//     return AppColors(
//       primaryColor: Colors.red,
//       secondaryColor: Colors.green,
//       backgroundColor: Colors.white,
//       textColor: Colors.black,
//       containerColor: Colors.grey.shade200,
//     );
//   }

//   factory AppColors.dark() {
//     return AppColors(
//       primaryColor: Colors.blue,
//       secondaryColor: Colors.green,
//       backgroundColor: Colors.black,
//       textColor: Colors.white,
//       containerColor: Colors.grey.shade800,
//     );
//   }

//   static AppColors of(BuildContext context) {
//     return Theme.of(context).brightness == Brightness.dark
//         ? AppColors.dark()
//         : AppColors.light();
//   }
// }
