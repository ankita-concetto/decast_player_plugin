
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*class DecastPlayerPlugin {
  static const MethodChannel _channel = MethodChannel('decast_player_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}*/

class DecastPlayerPlugin extends StatefulWidget {
  const DecastPlayerPlugin({Key? key}) : super(key: key);

  @override
  _DecastPlayerPluginState createState() => _DecastPlayerPluginState();
}

class _DecastPlayerPluginState extends State<DecastPlayerPlugin> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return AndroidView(
        viewType: 'dacast_player_view',
        onPlatformViewCreated: _onPlatformViewCreated,
      );
    }
    return Text(
        '$defaultTargetPlatform is not yet supported by the text_view plugin');
  }

  void _onPlatformViewCreated(int id) {
    /*if (widget.onTextViewCreated == null) {
      return;
    }
    widget.onTextViewCreated(new TextViewController._(id));*/
  }
}

