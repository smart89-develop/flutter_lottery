import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sm89_flutter_lottery/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp( MyApp());
  });
}
