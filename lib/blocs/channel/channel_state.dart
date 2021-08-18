part of 'channel_bloc.dart';

abstract class ChannelState extends Equatable {
  const ChannelState();
  
  @override
  List<Object> get props => [];
}

class ChannelInitial extends ChannelState {}
