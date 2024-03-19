import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_sub_categories_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:injectable/injectable.dart';

part 'sub_categories_bloc.freezed.dart';
part 'sub_categories_event.dart';
part 'sub_categories_state.dart';

@injectable
class SubCategoriesBloc extends Bloc<SubCategoriesEvent, SubCategoriesState> {
  SubCategoriesBloc(this._fetchSubCategoriesUseCase)
      : super(const SubCategoriesState()) {
    on<SubCategoriesEvent>(
      (event, emit) => event.map(
        getSubCategories: (event) => _onGetSubCategories(event, emit),
      ),
    );
  }
  final FetchSubCategoriesUseCase _fetchSubCategoriesUseCase;

  Future<void> _onGetSubCategories(
    _GetSubCategories event,
    Emitter<SubCategoriesState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      final categories = await _fetchSubCategoriesUseCase(
        event.parentCategoryId ?? '',
      );
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          categories: categories,
        ),
      );
    } on FirebaseException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(e.message ?? ''),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(e.toString()),
        ),
      );
    }
  }
}
