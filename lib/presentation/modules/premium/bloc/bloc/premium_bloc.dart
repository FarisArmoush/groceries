import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'premium_bloc.freezed.dart';
part 'premium_event.dart';
part 'premium_state.dart';

@injectable
class PremiumBloc extends Bloc<PremiumEvent, PremiumState> {
  PremiumBloc() : super(const PremiumState()) {
    on<PremiumEvent>((event, emit) {});
  }
}
