// using dynamic calls for Firestore timestamp duck-typing
// ignore_for_file: avoid_dynamic_calls

/// Parses a Firestore history timestamp from ISO-8601, [DateTime], or
/// Firestore [Timestamp] (via duck-typed `.toDate()`).
DateTime? parseFirestoreTimestamp(dynamic value) {
  if (value == null) {
    return null;
  }
  if (value is DateTime) {
    return value.toUtc();
  }
  if (value is String) {
    return DateTime.tryParse(value.replaceFirst('Z', '+00:00'))?.toUtc();
  }
  try {
    final dynamic toDate = value.toDate;
    if (toDate is DateTime Function()) {
      return toDate().toUtc();
    }
  } on Object {
    // Not a Firestore Timestamp-like value.
  }
  return null;
}

/// Shallow list equality for nullable lists.
bool listEquals<T>(List<T>? a, List<T>? b) {
  if (identical(a, b)) {
    return true;
  }
  if (a == null || b == null) {
    return a == b;
  }
  if (a.length != b.length) {
    return false;
  }
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) {
      return false;
    }
  }
  return true;
}

/// Shallow map equality for nullable `Map<String, dynamic>` instances.
bool mapEquals(Map<String, dynamic>? a, Map<String, dynamic>? b) {
  if (identical(a, b)) {
    return true;
  }
  if (a == null || b == null) {
    return a == b;
  }
  if (a.length != b.length) {
    return false;
  }
  for (final key in a.keys) {
    if (!b.containsKey(key) || a[key] != b[key]) {
      return false;
    }
  }
  return true;
}
