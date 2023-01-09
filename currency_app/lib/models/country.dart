class Country {
  String name;
  String urlFlag;
  String currency;
  Country({required this.name, required this.urlFlag, required this.currency});
}

final List<Country> data = [
  Country(
      name: 'EUR',
      urlFlag: 'https://countryflagsapi.com/png/europe',
      currency: 'EU'),
  Country(
      name: 'USA',
      urlFlag: 'https://countryflagsapi.com/png/america',
      currency: 'USD'),
 
];
