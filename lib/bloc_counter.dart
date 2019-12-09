import 'dart:async';

class BlocCounter {
  int _counter = 0;

  StreamController _controller = StreamController<int>();

  StreamSink<int> get _increment => _controller.sink;

  Stream<int> get counter => _controller.stream;

  BlocCounter() {
    this._controller.add(this._counter);
  }

  void dispatch() {
    this._increment.add(++this._counter);
  }

  void dispose() {
    _controller.close();
  }
}
