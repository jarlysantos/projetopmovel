class Dog {
  final int fileSizeBytes;
  final String url;

  Dog({
    required this.fileSizeBytes,
    required this.url,
  });

  // Cria um objeto Dog a partir de um JSON (Map)
  factory Dog.fromJson(Map<String, dynamic> json) {
    return Dog(
      fileSizeBytes: json['fileSizeBytes'] ?? 0,
      url: json['url'] ?? '',
    );
  }

  // Converte o objeto Dog de volta para JSON
  Map<String, dynamic> toJson() {
    return {
      'fileSizeBytes': fileSizeBytes,
      'url': url,
    };
  }
}
