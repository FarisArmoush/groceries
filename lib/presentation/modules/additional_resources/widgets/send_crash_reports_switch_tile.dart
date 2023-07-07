import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/additional_resources/cubit/send_crash_reports_cubit.dart';
import 'package:groceries/utils/constants/app_colors.dart';

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
      builder: (context, state) {
        return SwitchListTile.adaptive(
          value: state,
          onChanged: (value) {
            // value = state;
            context.read<SendCrashReportsCubit>().toggle();
          },
          inactiveTrackColor: AppColors.black,
          activeColor: Theme.of(context).primaryColorLight,
          inactiveThumbColor: AppColors.veryLightGrey,
          activeTrackColor: AppColors.veryLightGrey,
          tileColor: Colors.transparent,
          title: Text(AppTranslations.sendCrashReports),
          subtitle: Text(AppTranslations.sendCrashReportsDescription),
        );
      },
    );
  }
}
