import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';

class ListSection extends StatelessWidget {
  const ListSection({
    required this.itemBuilder,
    required this.itemCount,
    this.boxDecoration,
    this.headerText,
    this.headerStyle,
    this.boxPadding,
    Key? key,
  }) : super(key: key);

  final BoxDecoration? boxDecoration;
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final String? headerText;
  final TextStyle? headerStyle;
  final EdgeInsetsGeometry? boxPadding;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: boxPadding ?? const EdgeInsets.all(8),
      decoration: boxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (headerText != null)
            Text(
              headerText ?? 'Add a header',
              style: headerStyle ??
                  AppTextStyles.poppinsSemiBold(
                    color: Theme.of(context).primaryColor,
                    fontSize: 22,
                  ),
            )
          else
            const SizedBox.shrink(),
          SizedBox(height: size.height * 0.02),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: itemBuilder,
          ),
        ],
      ),
    );
  }
}
