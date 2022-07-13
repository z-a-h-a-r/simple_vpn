abstract class ApiUsrl {
  final _base = 'https://api.coingecko.com/api/v3';

  String get exchanges => '$_base/exchanges';
  String get trending => '$_base/search/trending';
}
