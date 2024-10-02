import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/cubit/cubit_counter.dart';
import 'package:counter_app/screen_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => CounterCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

/*

1. bloc
  - The bloc package contains the things that we use in our bloc layer. i.e. bloc class
  - This isn't necessarily flutter dependent.
  - It is just the logic architecture of the flutter app.
  - Can be used in the dart apps only.

2. flutter_bloc
  - The flutter bloc contains elements that we can use in our UI layer.
  - It includes widgets like bloc provide, bloc builder etc.

>> Two approaches while managing state and bloc
  i. By using bloc state management
  ii. By using cubit

 */
