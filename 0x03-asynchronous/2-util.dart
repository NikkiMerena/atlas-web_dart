// File: 2-util.dart

import 'dart:async';

Future<String> fetchUser() =>
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );
