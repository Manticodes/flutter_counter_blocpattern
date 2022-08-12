import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

//* here we create funtions that will apply changes on state
//! this class will extend cubit State

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0));
  void increament() => emit(
      CounterState(counterValue: state.counterValue + 1, wasIncreament: true));
  void decreament() => emit(
      CounterState(counterValue: state.counterValue - 1, wasIncreament: false));
}
