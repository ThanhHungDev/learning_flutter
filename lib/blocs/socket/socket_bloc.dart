import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'socket_event.dart';
part 'socket_state.dart';

class SocketBloc extends Bloc<SocketEvent, SocketState> {
  SocketBloc() : super(SocketInitial());

  @override
  Stream<SocketState> mapEventToState(
    SocketEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
