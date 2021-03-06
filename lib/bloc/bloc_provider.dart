import 'package:flutter/material.dart';
import 'bloc.dart';

class BlocProvider<T extends Bloc> extends StatefulWidget{

  final Widget child;
  final T bloc;

  const BlocProvider({Key key, @required this.child, @required this.bloc}): super(key: key);

  static T of<T extends Bloc>(BuildContext context){
    final type = _providerType<BlocProvider<T>>();
    final BlocProvider<T> provider = context.ancestorWidgetOfExactType(type);
//    final BlocProvider<T> provider = context.findAncestorWidgetOfExactType();
    return provider.bloc;
  }

  static Type _providerType<T>() => T;

  @override
  State createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider>{

  @override
  Widget build(BuildContext context){
    return widget.child;
  }

  @override
  void dispose(){
    super.dispose();
    widget.bloc.dispose();
  }
}

