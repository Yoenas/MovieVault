import 'package:freezed_annotation/freezed_annotation.dart';

part 'peoples.freezed.dart';
part 'peoples.g.dart';

@freezed
class Peoples with _$Peoples {
  const factory Peoples({
    required int id,
    @Default([]) List<Cast> cast,
    @Default([]) List<Cast> crew,
  }) = _Peoples;

  factory Peoples.fromJson(Map<String, dynamic> json) =>
      _$PeoplesFromJson(json);
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    required int id,
    String? name,
    String? character,
    String? department,
    String? job,
    @JsonKey(name: "original_name") String? originalName,
    @JsonKey(name: "profile_path") String? profilePath,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
