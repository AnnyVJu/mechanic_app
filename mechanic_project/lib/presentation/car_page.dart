/*
CAR PAGE: responsible for providing cubit to view (UI)
*use BlocProvider
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechanic_project/presentation/car_cubit.dart';

import '../domain/repository/car_repo.dart';
import 'car_view.dart';

class CarPage extends StatelessWidget {
  final CarRepo carRepo;
  const CarPage({super.key, required this.carRepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CarCubit(carRepo: carRepo),
    child: const CarView(),
    );
  }
}
