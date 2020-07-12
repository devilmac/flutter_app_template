import 'package:flutter/material.dart';
import 'package:flutter_template_app/state/network/network_context.dart';
import 'package:flutter_template_app/state/network/network_state.dart';

class EmptyResultState implements NetworkState {
  @override
  Future nextState(NetworkContext context, NetworkState nextState) async {
    context.setState(nextState);
  }

  @override
  Widget render(BuildContext buildContext) {
    return Container(
      child: Text(
        "No result!",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
