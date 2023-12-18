class TabInfo {
  final String title;
  final String label;

  TabInfo({required this.title, required this.label});

  TabInfo copyWith({
    String? title,
    String? label,
  }) {
    return TabInfo(
      title: title ?? this.title,
      label: label ?? this.label,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TabInfo && other.title == title && other.label == label;
  }

  @override
  int get hashCode => title.hashCode ^ label.hashCode;

  @override
  String toString() => 'TabInfo(title: $title, label: $label)';
}
