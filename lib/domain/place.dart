class Place {
  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final List<String> categories;

  Place({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.categories,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    final coords = json['location']['coordinates'];
    return Place(
      id: json['_id'],
      name: json['name'],
      latitude: coords[1],
      longitude: coords[0],
      categories: List<String>.from(json['categories']),
    );
  }
}