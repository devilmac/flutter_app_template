import 'package:flutter/widgets.dart';
import 'package:flutter_template_app/state/network/network_context.dart';

abstract class NetworkState {
  Future nextState(NetworkContext context, NetworkState nextState);

  Widget render(BuildContext buildContext);
}
