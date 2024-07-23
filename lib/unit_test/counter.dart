const max = 1000;
const min = 0;

class Counter {
  int value;

  Counter({this.value = 0});

  void increment() {
    if (value < max) value++;
  }

  void decrement() {
    if (value > min) value--;
  }
}
