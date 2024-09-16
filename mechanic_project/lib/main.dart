import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:mechanic_project/data/models/isar_car.dart';
import 'package:mechanic_project/data/repository/isar_car_repo.dart';
import 'package:mechanic_project/domain/repository/car_repo.dart';
import 'package:mechanic_project/presentation/car_page.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //get directory path for storing data
  final dir = await getApplicationDocumentsDirectory();

  //open isar database
  final isar = await Isar.open([CarIsarSchema], directory: dir.path);

  //initialize the repo with isar database
  final isarCarRepo = IsarCarRepo(isar);

  runApp(MyApp(carRepo: isarCarRepo));
}

class MyApp extends StatelessWidget {

  final CarRepo carRepo;
  const MyApp({super.key, required this.carRepo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mechanic app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: CarPage(carRepo: carRepo),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.

          ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
