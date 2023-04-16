import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/widgets/bottom_sheets_header.dart';
import 'package:groceries/app/presentation/widgets/buttons/bottom_sheet_button.dart';
import 'package:groceries/gen/assets.gen.dart';

class GroceryListOptionsBottomSheet extends StatelessWidget {
  const GroceryListOptionsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 32,
          ),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            const BottomSheetsHeader(
              header: 'List Options',
            ),
            BottomSheetButton(
              text: 'Send List As Text',
              icon: Assets.svg.icSend,
              onTap: () {},
            ),
            BottomSheetButton(
              text: 'Print List',
              icon: Assets.svg.icPrinter,
              onTap: () {},
            ),
            BottomSheetButton(
              text: 'List Settings',
              icon: Assets.svg.icSettings,
              onTap: () => context
                ..pop()
                ..pushNamed(
                  AppNamedRoutes.goceryListSettings,
                ),
            ),
          ],
        );
      },
    );
  }
}
