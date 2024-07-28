import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_example/unit_test/counter.dart';

void main() {
  test(
    'Counter 값 증가 테스트',
        () {
      final counter = Counter(value: 0);
      counter.increment();
      expect(counter.value, 1);
    },
  );

  test(
    'Counter 값 감소 테스트',
        () {
      final counter = Counter(value: 100);
      counter.decrement();
      expect(counter.value, 99);
    },
  );

  test(
    'Counter 값 최대값 증가 테스트',
        () {
      final counter = Counter(value: 1000);
      counter.increment();
      expect(counter.value, 1000);
    },
  );

  test(
    'Counter 값 최소값 감소 테스트',
        () {
      final counter = Counter(value: 0);
      counter.decrement();
      expect(counter.value, 0);
    },
  );
}