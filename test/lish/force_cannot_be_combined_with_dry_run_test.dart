// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.10

import 'package:pub/src/exit_codes.dart' as exit_codes;
import 'package:test/test.dart';

import '../descriptor.dart' as d;
import '../test_pub.dart';

void main() {
  setUp(d.validPackage.create);

  test('--force cannot be combined with --dry-run', () async {
    await runPub(
      args: ['lish', '--force', '--dry-run'],
      error: contains('Cannot use both --force and --dry-run.'),
      exitCode: exit_codes.USAGE,
    );
  });
}
