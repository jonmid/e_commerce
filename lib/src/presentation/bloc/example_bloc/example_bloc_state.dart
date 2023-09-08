part of 'example_bloc_bloc.dart';

class ExampleState extends Equatable {
  final int shoppingCart;

  const ExampleState({
    this.shoppingCart = 0,
  });

  ExampleState copyWith({
    int? shoppingCart,
  }) =>
      ExampleState(
        shoppingCart: shoppingCart ?? this.shoppingCart,
      );

  @override
  List<Object> get props => [shoppingCart];
}
