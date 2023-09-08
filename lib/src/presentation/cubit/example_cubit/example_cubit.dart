import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'example_state.dart';

class ExampleCubit extends Cubit<ExampleState> {
  ExampleCubit() : super(const ExampleState(shoppingCart: 0));

  void increaseShoppingCart() {
    emit(state.copyWith(
      shoppingCart: state.shoppingCart + 1,
    ));
  }

  void decreaseShoppingCart() {
    emit(state.copyWith(
      shoppingCart: state.shoppingCart - 1,
    ));
  }

  void reset() {
    emit(state.copyWith(
      shoppingCart: 0,
    ));
  }
}
