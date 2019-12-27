import 'package:flutter/material.dart';
import 'UI/main_screen.dart';
import 'bloc/bloc_provider.dart';
import 'bloc/location_bloc.dart';

void main() => runApp(RestaurantFinder());

class RestaurantFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      bloc: LocationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restaurant Finder',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MainScreen(),
      )
    );
  }
}
