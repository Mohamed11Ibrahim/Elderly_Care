import 'package:elderly_care/utils.dart';
import 'package:flutter/material.dart';
import 'package:elderly_care/cubit/cubit_app.dart';
import 'package:elderly_care/cubit/states_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: BlocProvider(
			create:(BuildContext context)=> cubit_app(),
			child: BlocConsumer<cubit_app, states_app>(
				listener: (context, state){},
				builder: (context, state)
				{
					return Scaffold(
							body: SingleChildScrollView(
								child:cubit_app.get(context).screens[cubit_app.get(context).currentIndex],
							)
					);
				},
			),
		),
	);
	}
}
