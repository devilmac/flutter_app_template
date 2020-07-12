import 'dart:async';

import 'package:flutter_template_app/state/network/network_state.dart';

import 'loading_state.dart';

class NetworkContext {
  StreamController<NetworkState> _stateStream =
      StreamController<NetworkState>();

  Sink<NetworkState> get _inState => _stateStream.sink;

  Stream<NetworkState> get outState => _stateStream.stream;

  NetworkState _currentState;

  NetworkContext() {
    _currentState = null;
    _addCurrentStateToStream();
  }

  void dispose() {
    _stateStream.close();
  }

  void setState(NetworkState nextState) {
    _currentState = nextState;
    _addCurrentStateToStream();
  }

  void _addCurrentStateToStream() {
    _inState.add(_currentState);
  }

  Future<void> nextState(NetworkState nextState) async {
    await _currentState.nextState(this, nextState);

    if (_currentState is LoadingState) {
      await _currentState.nextState(this, nextState);
    }
  }
}
