import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_blocpattern/logic/cubit/counter_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).increament();
              },
              child: Icon(Icons.add),
            ),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) {
                if (state.wasIncreament == true) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Increased'),
                    duration: Duration(milliseconds: 50),
                  ));
                } else if (state.wasIncreament == false) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Increased'),
                    duration: Duration(milliseconds: 50),
                  ));
                }
                // TODO: implement listener
              },
              builder: (context, state) {
                return Container(
                    margin: EdgeInsets.all(15),
                    child: Text(state.counterValue.toString()));
              },
            ),
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).decreament();
              },
              child: Icon(Icons.remove),
            ),
          ],
        )
      ]),
    );
  }
}
