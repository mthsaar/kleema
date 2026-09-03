class WeatherModel {
  final double temperature;
  final double humidity;
  final double pressure;
  final double windSpeed;
  final double uvIndex;
  final double rainfall;

  WeatherModel({
    required this.temperature,
    required this.humidity,
    required this.pressure,
    required this.windSpeed,
    required this.uvIndex,
    required this.rainfall,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    final current = json['current'];
    return WeatherModel(
      temperature: (current['temperature_2m'] as num).toDouble(),
      humidity: (current['relative_humidity_2m'] as num).toDouble(),
      pressure: (current['surface_pressure'] as num).toDouble(),
      windSpeed: (current['wind_speed_10m'] as num).toDouble(),
      uvIndex: (current['uv_index'] as num).toDouble(),
      rainfall: (current['rain'] as num).toDouble(),
    );
  }
}
