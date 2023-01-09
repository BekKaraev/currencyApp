import 'package:currency_app/models/country.dart';
import 'package:currency_app/repository/convert_repo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Country fromCountry = data[0];
  Country toCountry = data[1];
  double value = 0;
  late Future<double>resFuture;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'CURRENCY COUNTER KG',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildCurrencyView(toCountry),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 1,
                            color: Colors.indigo.withOpacity(0.3),
                            offset: const Offset(0, 3),
                          ),
                        ]),
                    child: const Center(
                      child: Text(
                        '=',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.indigo[50],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.indigo),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.import_export,
                            size: 30,
                            color: Colors.blue,
                          ),
                          Text(
                            'switch currency',
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              _buildCurrencyView(fromCountry),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildCurrencyView(Country country) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 4,
                color: Colors.indigo.withOpacity(0.3),
                offset: const Offset(0, 3))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    country.urlFlag,
                    height: 40,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        country.name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        country.currency,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            ),
            TextFormField(
              initialValue: value.toString(),
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              decoration: InputDecoration(
                  hintText: '0.0',
                  suffixIcon: Text(country.currency),
                  suffixIconConstraints:
                      const BoxConstraints(minHeight: 0, minWidth: 0)),
            )
          ],
        ),
      ),
    );
  }
}
