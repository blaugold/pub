// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.10

import 'package:pub/src/exit_codes.dart' as exit_codes;
import 'package:test/test.dart';

import '../../test_pub.dart';

void main() {
  test('fails if there are extra arguments', () {
    return runPub(
      args: ['global', 'deactivate', 'foo', 'bar', 'baz'],
      error: contains('Unexpected arguments "bar" and "baz".'),
      exitCode: exit_codes.USAGE,
    );
  });
}
