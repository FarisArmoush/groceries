part of '../additional_resources.dart';

class SendCrashReportsSwitchTile extends StatelessWidget {
  const SendCrashReportsSwitchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SendCrashReportsCubit>(
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
      builder: (context, state) {
        return SwitchListTile.adaptive(
          value: state,
          onChanged: (_) => context.read<SendCrashReportsCubit>().toggle(),
          inactiveTrackColor: AppColors.black,
          activeColor: context.theme.primaryColorLight,
          inactiveThumbColor: AppColors.veryLightGrey,
          activeTrackColor: AppColors.veryLightGrey,
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
