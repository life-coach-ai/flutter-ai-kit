/// Geographic location used by chat/tool workflows.
///
/// Mirrors [lcai-core `UserLocation`](https://github.com/lcai/lcai-core/blob/main/core/model/user_location.py).
final class UserLocation {
  const UserLocation({
    this.latitude,
    this.longitude,
  });

  factory UserLocation.fromJson(Map<String, dynamic> json) => UserLocation(
        latitude: (json['latitude'] as num?)?.toDouble(),
        longitude: (json['longitude'] as num?)?.toDouble(),
      );

  final double? latitude;
  final double? longitude;

  Map<String, dynamic> toJson() => {
        if (latitude != null) 'latitude': latitude,
        if (longitude != null) 'longitude': longitude,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLocation &&
          latitude == other.latitude &&
          longitude == other.longitude;

  @override
  int get hashCode => Object.hash(latitude, longitude);
}
