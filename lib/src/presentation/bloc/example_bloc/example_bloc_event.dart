part of 'example_bloc_bloc.dart';

abstract class ExampleEvent {
  const ExampleEvent();
}

class ExampleIncreased extends ExampleEvent {}

class ExampleReset extends ExampleEvent {}
