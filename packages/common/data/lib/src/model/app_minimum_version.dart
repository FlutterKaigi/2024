import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pub_semver/pub_semver.dart';

part 'app_minimum_version.freezed.dart';
part 'app_minimum_version.g.dart';

enum AppPlatform {
  ios,
  android,
}

@freezed
class AppMinimumVersion with _$AppMinimumVersion {
  const factory AppMinimumVersion({
    required AppPlatform platform,
    @VersionConverter()
    @JsonKey(name: 'app_version_text')
    required Version version,
  }) = _AppMinimumVersion;

  factory AppMinimumVersion.fromJson(Map<String, dynamic> json) =>
      _$AppMinimumVersionFromJson(json);
}

class VersionConverter implements JsonConverter<Version, String> {
  const VersionConverter();

  @override
  Version fromJson(String json) => Version.parse(json);

  @override
  String toJson(Version object) => object.toString();
}
