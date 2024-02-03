import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SendCrashReportsCubit extends Cubit<bool> {
  SendCrashReportsCubit() : super(false);

  void toggle() => emit(!state);
}
