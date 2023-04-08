void main() {
  _rangePrinter(
    start: 0,
    end: 10,
    message: "Hello World",
  );
  _rangePrinter(
    start: 10,
    end: 20,
    message: "Hello World Again !",
  );
  _rangePrinter(
    start: 20,
    end: 30,
    message: "Hello World Once More !",
  );

  int getOne() {
    return 1;
  }

  int getTwo(Function localGetOne) {
    return localGetOne() + 1;
  }

  _addDelay(seconds: 5);

  print(getTwo(getOne));
}

void _rangePrinter({
  required int start,
  required int end,
  required String message,
}) {
  for (int i = start; i < end; i++) {
    print(message);
  }
}

void _addDelay({required int seconds}) async {
  await Future.delayed(Duration(seconds: seconds));
}
