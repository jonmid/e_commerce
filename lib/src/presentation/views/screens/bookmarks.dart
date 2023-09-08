import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:e_commerce/src/utils/constants/colors.dart';
import 'package:e_commerce/src/presentation/cubit/example_cubit/example_cubit.dart';

class Bookmarks extends StatelessWidget {
  const Bookmarks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ExampleCubit(),
      child: const StateExample(),
    );
  }
}

class StateExample extends StatelessWidget {
  const StateExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(primary, BlendMode.srcIn),
            child: SvgPicture.asset(
              'assets/svg/arrow-return.svg',
              width: 22,
              height: 22,
            ),
          ),
          onPressed: () {
            context.push('/');
          },
        ),
        title: context.select((ExampleCubit value) {
          return Text('shoppingCart: ${value.state.shoppingCart}');
        }),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ExampleCubit>().reset();
            },
            icon: const Icon(Icons.refresh_outlined),
          )
        ],
      ),
      body: Center(
        child: BlocBuilder<ExampleCubit, ExampleState>(
          builder: (context, state) {
            print('change status: ${state.shoppingCart}');
            return Text('shoppingCart: ${state.shoppingCart}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: const Text('+1'),
            onPressed: () =>
                context.read<ExampleCubit>().increaseShoppingCart(),
          ),
        ],
      ),
    );
  }
}
