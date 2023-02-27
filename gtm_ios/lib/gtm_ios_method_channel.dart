import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'gtm_ios_platform_interface.dart';

/// An implementation of [GtmIosPlatform] that uses method channels.
class MethodChannelGtmIos extends GtmIosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('gtm_ios');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
