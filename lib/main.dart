import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:fimber/fimber.dart';
import 'package:flapp/foundation/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Fimber
  if (!kReleaseMode) {
    Fimber.plantTree(DebugTree());
  } else {
    debugPrint = (message, {wrapWidth}) {};
  }

  // Display Toast (Only Dev)
  if (Constants.flavor == Flavor.dev) {
    Fluttertoast.showToast(
      msg: "flavor: ${EnumToString.convertToString(Constants.flavor)}",
    );
  }

  runZonedGuarded(
    () => runApp(
      ProviderScope(
        child: DevicePreview(
          enabled: !kReleaseMode && Constants.enablePreview,
          builder: (context) {
            return const MyApp();
          },
        ),
      ),
    ),
    (error, stackTrace) {
      Fimber.e(error.toString());
    },
  );
}
