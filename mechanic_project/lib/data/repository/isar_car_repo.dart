/*
DATABASE REPO

This implements the car repo and handles storing, retrieving, updating,
deleting in the isar database
 */

import 'package:isar/isar.dart';
import 'package:mechanic_project/data/models/isar_car.dart';

import '../../domain/models/car.dart';
import '../../domain/repository/car_repo.dart';

class IsarCarRepo implements CarRepo{
  //database
  final Isar db;
  IsarCarRepo(this.db);

  //get cars
@override
  Future<List<Car>> getCar() async {
  //fetch from db
  final cars = await db.carIsars.where().findAll();

  //return as a list of cars and give to domain layer
  return cars.map((carIsar) => carIsar.toDomain()).toList();
}

//add car
@override
  Future<void> addCar(Car newCar) async {
  //convert car into isar car
  final carIsar = CarIsar.fromDomain(newCar);

  //so that we can store it in our isar db
  return  db.carIsars.put(carIsar);

}

//update car
  @override
Future<void> updateCar(Car car) async {}

  @override
//delete car
  Future<void> deleteCar(Car car) async {}
}