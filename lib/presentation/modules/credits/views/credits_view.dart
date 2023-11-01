part of '../credits.dart';

class CreditsView extends StatelessWidget {
  const CreditsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreditsCubit(
        context.read<FetchCreditsUseCase>(),
      ),
      child: const CreditsPage(),
    );
  }
}
