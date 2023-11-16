part of '../../home.dart';

class ReloadGroceryListsColumn extends StatelessWidget {
  const ReloadGroceryListsColumn({
    required this.error,
    super.key,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          error,
          style: TextStyle(
            color: context.theme.primaryColor,
            fontFamily: AppFonts.semiBold(context),
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        ElevatedButton(
          onPressed: () => context.read<GroceryListsBloc>()
            ..add(
              const GroceryListsEvent.loadGroceryLists(),
            ),
          child: Text(AppTranslations.general.tryAgain),
        ),
      ],
    );
  }
}
