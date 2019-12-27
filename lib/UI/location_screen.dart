import 'package:flutter/material.dart';
import 'package:restaurant_finder/bloc/location_query_bloc.dart';
import '../bloc/bloc_provider.dart';

class LocationScreen extends StatelessWidget{

  final bool isFullScreenDialog;

  const LocationScreen({@required this.isFullScreenDialog});

  @override
  Widget build(BuildContext context){
    final bloc = LocationQueryBloc();
    return BlocProvider<LocationQueryBloc>(
      bloc: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Where do you want to eat?')
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter a Location'
                ),
                onChanged:(query){},
              )
            ),
            Expanded(
              child: _buildResults()
            )
          ]
        )
      ),
    );
  }
}

Widget _buildResults(){
  return Center(
    child: Text('Entar a Location')
  );
}


