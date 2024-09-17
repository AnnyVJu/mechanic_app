/*
ISAR CAR MODEL
Converts car model into isar car model that we can store in our isar db.
 */

import "package:isar/isar.dart";
import 'package:mechanic_project/domain/models/car.dart';

part 'isar_car.g.dart';

@Collection()
class CarIsar {
  @Id()
  late final int id;
  late String gosNumber;
  late String description;
  late bool isCompleted;

  CarIsar({
    required this.id,
    required this.gosNumber,
    required this.description,
      });
  //convert isar object -> pure car object to use in our app
  Car toDomain() {
    return Car(
      id: id,
      gosNumber: gosNumber,
      description: description,
      isCompleted: isCompleted,
    );
  }

  // convert pure car object -> isar object to store in isar db

  static CarIsar fromDomain(Car car) {
    return CarIsar(id: car.id, gosNumber: car.gosNumber, description: car.description)
      ..id = car.id
      ..gosNumber = car.gosNumber
      ..description = car.description
      ..isCompleted = car.isCompleted;
  }
}
