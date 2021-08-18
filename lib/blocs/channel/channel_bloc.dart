import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'channel_event.dart';
part 'channel_state.dart';

class ChannelBloc extends Bloc<ChannelEvent, ChannelState> {
  ChannelBloc() : super(ChannelInitial());

  @override
  Stream<ChannelState> mapEventToState(
    ChannelEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
