import 'package:flutter_counter_blocpattern/logic/cubit/counter_cubit.dart';
import 'package:test/test.dart';

void main() {
  group('counterCubic', () {
    CounterCubit counterCubit = CounterCubit();
    setUp(() {
      counterCubit;
    });
    tearDown(() {
      counterCubit.close();
    });
    test('initialstate is zero', () {
      expect(counterCubit.state, CounterState(counterValue: 0));
    });
  });
}
