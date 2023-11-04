part of '../additional_resources.dart';

class SendCrashReportsSwitchTile extends StatelessWidget {
  const SendCrashReportsSwitchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SendCrashReportsCubit(),
      child: const _SwitchListTile(),
    );
  }
}

class _SwitchListTile extends StatelessWidget {
  const _SwitchListTile();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendCrashReportsCubit, bool>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return SwitchListTile(
          value: state,
          onChanged: (_) => context.read<SendCrashReportsCubit>().toggle(),
          inactiveTrackColor: AppColors.black,
          activeColor: context.theme.primaryColorLight,
          inactiveThumbColor: AppColors.offWhite,
          activeTrackColor: AppColors.offWhite,
          tileColor: Colors.transparent,
          title: Text(AppTranslations.additionalResources.sendCrashReports),
          subtitle: Text(
            AppTranslations.additionalResources.sendCrashReportsDescription,
          ),
        );
      },
    );
  }
}
