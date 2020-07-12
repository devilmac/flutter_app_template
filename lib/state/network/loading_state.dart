import 'package:flutter/material.dart';
import 'package:flutter_template_app/state/network/network_context.dart';
import 'package:flutter_template_app/state/network/network_state.dart';

class LoadingState implements NetworkState {
  @override
  Future nextState(NetworkContext context, NetworkState nextState) {
    return context.nextState(nextState);
  }

  @override
  Widget render(BuildContext buildContext) {
    return Container(
      child: CircularProgressIndicator(),
    );
  }
}
