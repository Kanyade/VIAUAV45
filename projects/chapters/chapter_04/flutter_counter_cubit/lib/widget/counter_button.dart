import 'package:flutter/material.dart';
import 'package:flutter_counter_provider/cubit/counter_cubit.dart';
import 'package:provider/provider.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.read<CounterCubit>().incrementCount();
      },
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
