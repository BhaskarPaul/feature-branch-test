import 'dart:async';

void main() {
  for (int i = 0; i < 10; i++) {
    print("Hello World");
  }

  for (int i = 10; i < 20; i++) {
    print("Hello World Again!!");
  }

  for (int i = 20; i < 30; i++) {
    print("Hello World Once More !!!");
  }

  int getOne() {
    return 1;
  }

  int getTwo() {
    return getOne() + 1;
  }

  print(getOne());
  print(getTwo());

  // calling a function after each 1 second
  final timer = Timer(Duration(seconds: 2), () {
    print("Timer called");
  });

  timer.cancel();
}
