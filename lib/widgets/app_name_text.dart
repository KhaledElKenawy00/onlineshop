import 'package:flutter/material.dart';
import 'package:onloneshop/widgets/title_text.dart';
import 'package:shimmer/shimmer.dart';
class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontSize = 30});
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 22),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: TitlesTextWidget(
        label: "Online Shop",
        fontSize: fontSize,
      ),
    );
  }
}
