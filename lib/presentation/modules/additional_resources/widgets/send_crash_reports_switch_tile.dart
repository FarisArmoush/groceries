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
        return ListTile(
          tileColor: Colors.transparent,
          title: Text(AppTranslations.additionalResources.sendCrashReports),
          subtitle: Text(
            AppTranslations.additionalResources.sendCrashReportsDescription,
          ),
          trailing: CupertinoSwitch(
            activeColor: context.theme.primaryColorLight,
            value: state,
            onChanged: (_) => context.read<SendCrashReportsCubit>().toggle(),
          ),
        );
      },
    );
  }
}
