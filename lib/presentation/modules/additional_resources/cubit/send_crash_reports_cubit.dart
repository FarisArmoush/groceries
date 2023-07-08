import 'package:bloc/bloc.dart';

class SendCrashReportsCubit extends Cubit<bool> {
  SendCrashReportsCubit() : super(false);

  void toggle() => emit(!state);
}
