import 'package:json_annotation/json_annotation.dart';

part 'weatherdata.g.dart';

@JsonSerializable()
class WeatherData {
  @JsonKey(required: true, name: "station_id")
  String stationId;

  @JsonKey(required: true, name: "station_name")
  String stationName;

  @JsonKey(required: true, name: "date")
  DateTime date;

  @JsonKey(required: false, name: "maximum_temperature_c", defaultValue: "100")
  String maxTemperature;

  @JsonKey(required: false, name: "minimum_temperature_c", defaultValue: "0")
  String minTemperature;

  WeatherData(
    this.stationId,
    this.stationName,
    this.date,
    this.maxTemperature,
    this.minTemperature,
  );

  factory WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);
}
