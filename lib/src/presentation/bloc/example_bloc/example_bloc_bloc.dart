import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'example_bloc_event.dart';
part 'example_bloc_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(const ExampleState()) {
    on<ExampleIncreased>(_onExampleIncreased);
    on<ExampleReset>(_onExampleReset);
  }

  void _onExampleIncreased(ExampleIncreased event, Emitter<ExampleState> emit) {
    emit(state.copyWith(
      shoppingCart: state.shoppingCart + 1,
    ));
  }

  void _onExampleReset(ExampleReset event, Emitter<ExampleState> emit) {
    emit(state.copyWith(
      shoppingCart: 0,
    ));
  }

  void increase() {
    add(ExampleIncreased());
  }

  void reset() {
    add(ExampleReset());
  }
}
