import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'send_crash_reports_state.dart';

class SendCrashReportsCubit extends Cubit<bool> {
  SendCrashReportsCubit() : super(false);

  void toggle() => emit(!state);
}
