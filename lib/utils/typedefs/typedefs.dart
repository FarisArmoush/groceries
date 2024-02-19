/// A type definition representing a JSON object.
///
/// JSON objects are represented as maps with string keys and dynamic values,
/// where the values can be of any type including null.
///
/// Example usage:
/// ```dart
/// JSON user = {'name': 'John', 'age': 30};
/// ```
typedef JSON = Map<String, Object?>;
