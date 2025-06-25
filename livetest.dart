class Student {
  String name;
  List<int> scores;

  Student(this.name, this.scores);

  double getAverage() {
    int total = 0;
    for (int i = 0; i < scores.length; i++) {
      total += scores[i];
    }
    double avg = total / scores.length;
    return double.parse(avg.toStringAsFixed(2));
  }
}

void main() {
  List<Student> students = [
    Student("Alice", [85, 90, 78]),
    Student("Bob", [88, 76, 95]),
    Student("Charlie", [90, 92, 85]),
  ];
}
