package com.example.decast_player_plugin.decast_player_plugin;

import io.flutter.plugin.common.PluginRegistry;

/** DecastPlayerPlugin */
public class DecastPlayerPlugin {
  public static void registerWith(PluginRegistry.Registrar registrar) {
    registrar
            .platformViewRegistry()
            .registerViewFactory(
                    "dacast_player_view", new DecastPlayerFactory(registrar.messenger()));
  }
}
