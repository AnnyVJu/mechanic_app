/*
CAR CUBIT -     simple state management
Each cubit is a list of cars.
 */

import '../domain/models/car.dart';
import '../domain/repository/car_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarCubit extends Cubit<List<Car>> {
  //Reference car repo
  final CarRepo carRepo;

  //Constructor initializers the cubit with an empty list
  CarCubit({required this.carRepo}) : super([]) {
    loadCars();
  }

//LOAD
  Future<void> loadCars() async {
    //fetch list of cars from repo
    final carList = await carRepo.getCar();

    //emit the fetched list as the new state
    emit(carList);
  }

//ADD
  Future<void> addCar(String text) async {
    //create a new car with unique Id
    final newCar = Car(
      id: DateTime.now().millisecondsSinceEpoch,
      gosNumber: text,
      description: text,
    );

    //save the new car to repo
    await carRepo.addCar(newCar);

    //reload
    loadCars();
  }

//DELETE
  Future<void> deleteCar(Car car) async {
    //delete the provided car from repo
    await carRepo.deleteCar(car);
    //reload
    loadCars();
  }

//TOGGLE
  Future<void> toggleCompletion(Car car) async {
    //toggle the completion status of provided car
    final updatedCar = car.toggleCompletion();

    //update the car in repo with new completion status
    await carRepo.updateCar(updatedCar);
    //reload
    loadCars();
  }
}
