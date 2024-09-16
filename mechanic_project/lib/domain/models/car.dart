
class Car {
  final int id;
  bool isCompleted;
  String gosNumber;
  String description;

  Car({
    required this.id,
    this.isCompleted = false,
    required this.gosNumber,
    required this.description,
  });

  Car toggleCompletion() {
    return Car(
      id: id,
      gosNumber: gosNumber,
      isCompleted: !isCompleted, description: ' ',
    );
  }
}