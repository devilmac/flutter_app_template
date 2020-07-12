import 'package:flutter/material.dart';
import 'package:flutter_template_app/state/network/network_context.dart';
import 'package:flutter_template_app/state/network/network_state.dart';

class ErrorState implements NetworkState {
  final String errorMessage;

  ErrorState({this.errorMessage});

  @override
  Future nextState(NetworkContext context, NetworkState nextState) async {
    context.setState(nextState);
  }

  @override
  Widget render(BuildContext buildContext) {
    return Container(
      child: Text(
        errorMessage,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
