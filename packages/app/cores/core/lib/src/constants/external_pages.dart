enum ExternalPages {
  medium(
    'https://medium.com/flutterkaigi',
  );

  const ExternalPages(this._uriString);

  final String _uriString;
  Uri get uri => Uri.parse(_uriString);
}
