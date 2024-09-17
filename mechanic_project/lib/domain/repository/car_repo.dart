
import '../models/car.dart';
/*
TO DO REPOSITORY
Here you define what the app can do.
 */

abstract class CarRepo{
  // get list of cars
  Future<List<Car>> getCar();

  // add a new car
Future<void> addCar(Car newCar);

  // update an existing car
Future<void> updateCar(Car car);

  // delete a car
  Future<void> deleteCar(Car car);
}