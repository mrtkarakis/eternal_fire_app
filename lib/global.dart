import 'dart:async' as async;
import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

// Function
void developerLog(
  final String? log, {
  final String name = "developerLog",
  final Object? error,
  final int level = 0,
  final int? sequenceNumber,
  final StackTrace? stackTrace,
  final DateTime? startTime,
  final DateTime? endTime,
  final async.Zone? zone,
  DateTime? time,
}) {
  if (kDebugMode) {
    time = time ?? DateTime.now();
    final Duration? duration = endTime != null && startTime != null
        ? endTime.difference(startTime)
        : null;
    developer.log(
      log != null
          ? "<<time: $time>> ${duration != null ? 'duration: ${duration.inMicroseconds}, ' : ""}$log"
          : "",
      name: name,
      error: error,
      level: level,
      sequenceNumber: sequenceNumber,
      stackTrace: stackTrace,
      time: time,
      zone: zone,
    );
  }
}
