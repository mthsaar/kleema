import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kleema/strings.dart';

class WeatherService {
  static const _baseUrl = 'https://api.open-meteo.com/v1/forecast';

  Future<Map<String, dynamic>> getForecast({
    required double lat,
    required double lon,
  }) async {
    final url = Uri.parse(
      '$_baseUrl?latitude=$lat&longitude=$lon'
      '&current=temperature_2m,relative_humidity_2m,surface_pressure,'
      'wind_speed_10m,uv_index,rain'
      '&daily=uv_index_max,temperature_2m_max,temperature_2m_min,'
      'precipitation_sum'
      '&timezone=auto',
    );

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(Strings.errorFetchingWeather);
    }
  }
}
