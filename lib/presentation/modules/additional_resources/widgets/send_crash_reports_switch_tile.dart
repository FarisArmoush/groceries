import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/additional_resources/cubit/send_crash_reports_cubit.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

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
