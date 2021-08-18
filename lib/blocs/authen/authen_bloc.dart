import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authen_event.dart';
part 'authen_state.dart';

class AuthenBloc extends Bloc<AuthenEvent, AuthenState> {
  AuthenBloc() : super(AuthenInitial());

  @override
  Stream<AuthenState> mapEventToState(
    AuthenEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
