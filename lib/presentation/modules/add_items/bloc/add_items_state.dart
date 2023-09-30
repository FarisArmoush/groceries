part of '../add_items.dart';

enum AddItemsStatus {
  loading,
  success,
  error,
  initial,
}

final class AddItemsState extends Equatable {
  const AddItemsState({
    required this.status,
    required this.categories,
    required this.baseGroceries,
    required this.selectedCategory,
    this.error = 'Failed to get data, Try again later.',
  });

  final AddItemsStatus status;
  final List<CategoryModel> categories;
  final List<GroceryModel> baseGroceries;
  final String selectedCategory;
  final String error;

  AddItemsState copyWith({
    AddItemsStatus? addItemsStates,
    List<CategoryModel>? categories,
    List<GroceryModel>? baseGroceries,
    String? selectedCategory,
    String? error,
  }) {
    return AddItemsState(
      categories: categories ?? this.categories,
      status: addItemsStates ?? status,
      baseGroceries: baseGroceries ?? this.baseGroceries,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [
        status,
        categories,
        error,
        baseGroceries,
        selectedCategory,
      ];
}
