part of '../additional_resources.dart';

class SendCrashReportsCubit extends Cubit<bool> {
  SendCrashReportsCubit() : super(false);

  void toggle() => emit(!state);
}
