// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weatherdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['station_id', 'station_name', 'date'],
  );
  return WeatherData(
    json['station_id'] as String,
    json['station_name'] as String,
    DateTime.parse(json['date'] as String),
    json['maximum_temperature_c'] as String? ?? '100',
    json['minimum_temperature_c'] as String? ?? '0',
  );
}

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) =>
    <String, dynamic>{
      'station_id': instance.stationId,
      'station_name': instance.stationName,
      'date': instance.date.toIso8601String(),
      'maximum_temperature_c': instance.maxTemperature,
      'minimum_temperature_c': instance.minTemperature,
    };
