import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import 'package:e_commerce/src/presentation/bloc/example_bloc/example_bloc_bloc.dart';
import 'package:e_commerce/src/utils/constants/colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ExampleBloc(),
      child: const ExampleBlocView(),
    );
  }
}

class ExampleBlocView extends StatelessWidget {
  const ExampleBlocView({
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
        title: context.select((ExampleBloc bloc) =>
            Text('shoppingCart: ${bloc.state.shoppingCart}')),
        actions: [
          IconButton(
              onPressed: () => context.read<ExampleBloc>().reset(),
              icon: const Icon(Icons.refresh_outlined))
        ],
      ),
      body: Center(
        child: context.select((ExampleBloc counterCar) =>
            Text('shoppingCart BLOC: ${counterCar.state.shoppingCart}')),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: const Text('+1'),
            onPressed: () => context.read<ExampleBloc>().increase(),
          ),
        ],
      ),
    );
  }
}
