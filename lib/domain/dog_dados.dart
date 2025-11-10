class Dog {
  final int fileSizeBytes;
  final String url;

  Dog({
    required this.fileSizeBytes,
    required this.url,
  });

  factory Dog.fromJson(Map<String, dynamic> json) {
    return Dog(
      fileSizeBytes: json['fileSizeBytes'] ?? 0,
      url: json['url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fileSizeBytes': fileSizeBytes,
      'url': url,
    };
  }
}
