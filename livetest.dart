void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  Map<String, double> studentAverages = {};

  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);
    double average = scores.reduce((a, b) => a + b) / scores.length;
    average = double.parse(average.toStringAsFixed(2));
    studentAverages[name] = average;
  }

  var sortedEntries = studentAverages.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedStudentAverages = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  print(sortedStudentAverages);
}

