import 'dart:async';
import '../DataLayer/location.dart';
import 'package:restaurant_finder/DataLayer/zomato_client.dart';
import 'bloc.dart';

class LocationQueryBloc implements Bloc{

  final _controllerList = StreamController<List<Location>>();
  final _client = ZomatoClient();
  Stream<List<Location>> get locationStream => _controllerList.stream;

  void submitQuery(String query) async{
    final results = await _client.fetchLocations(query);
    _controllerList.sink.add(results);
  }

  @override
  void dispose() {
    _controllerList.close();
  }
}
