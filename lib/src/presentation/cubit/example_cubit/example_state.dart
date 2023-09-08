part of 'example_cubit.dart';

class ExampleState extends Equatable {
  final int shoppingCart;

  const ExampleState({
    this.shoppingCart = 0,
  });

  copyWith({
    int? shoppingCart,
  }) =>
      ExampleState(
        shoppingCart: shoppingCart ?? this.shoppingCart,
      );

  @override
  List<Object> get props => [shoppingCart];
}
