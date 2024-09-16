/*
CAR VIEW: responsible for UI
* use blockProvider
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/models/car.dart';
import 'car_cubit.dart';

class CarView extends StatelessWidget {
  const CarView({super.key});

  //show dialog box for user to type
  void _showAddCarBox(BuildContext context) {
    final carCubit = context.read<CarCubit>();
    final textController = TextEditingController();

    showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              content: TextField(controller: textController),
              actions: [
                TextButton(onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Отмена')),
                TextButton(onPressed: () {
                  carCubit.addCar(textController.text);
                  Navigator.of(context).pop();
                },
                    child: const Text('Добавить')),
              ],
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    final carCubit = context.read<CarCubit>();

    return Scaffold(
      //FAB
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showAddCarBox(context),
          child: const Icon(Icons.add),
        ),

      //BLOC BUILDER
      body: BlocBuilder<CarCubit, List<Car>>(
        builder: (context, cars) {
          return ListView.builder(itemCount: cars.length,
              itemBuilder: (context, index) {
            final car = cars[index];
            return ListTile(
              title: Text(car.gosNumber),
              leading: Checkbox(
                value: car.isCompleted,
                onChanged: (value) => carCubit.toggleCompletion(car),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => carCubit.deleteCar(car),
              ),
            );
          }, );
        },
      ),
    );
  }
}
