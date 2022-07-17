class PackageDetails {
  final String name;
  final String description;
  final double score;
  final String version;
  final int likes;
  final int pubPoints;
  final List<String> platforms;

  PackageDetails({
    required this.name,
    required this.description,
    required this.score,
    required this.version,
    required this.likes,
    required this.pubPoints,
    required this.platforms,
  });
}
