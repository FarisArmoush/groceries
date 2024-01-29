part of '../additional_resources.dart';

class SendCrashReportsSwitchTile extends StatelessWidget {
  const SendCrashReportsSwitchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendCrashReportsCubit, bool>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return SwitchListTile.adaptive(
          value: state,
          onChanged: (_) => context.read<SendCrashReportsCubit>().toggle(),
          tileColor: AppColors.transparent,
          activeColor: context.theme.primaryColorLight,
          title: Text(AppTranslations.additionalResources.sendCrashReports),
          subtitle: Text(
            AppTranslations.additionalResources.sendCrashReportsDescription,
          ),
        );
      },
    );
  }
}
