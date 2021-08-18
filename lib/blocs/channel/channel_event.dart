part of 'channel_bloc.dart';

abstract class ChannelEvent extends Equatable {
  const ChannelEvent();
}


class ChannelInitialEvent extends ChannelEvent {

  const ChannelInitialEvent();
  @override
  List<Object> get props => [];
}

// class ChatLoadingChannelEvent extends ChannelEvent {
//   final SocketIO socketIO;

//   const ChatLoadChannelEvent({this.socketIO});
//   @override
//   List<Object> get props => [socketIO];
// }

// //ChatAddMessageEvent

// class ChatSendMessageEvent extends ChatEvent {
//   final String content;

//   ChatSendMessageEvent({this.content});
//   @override
//   List<Object> get props => [content];
// }

// class ChatReceiveMessagesEvent extends ChatEvent {
//   final Message message;

//   const ChatReceiveMessagesEvent({this.message});
//   @override
//   List<Object> get props => [message];
// }

// class ChatGetSocketIdEvent extends ChatEvent {
//   final String socketId;
//   final bool reconnect;
//   const ChatGetSocketIdEvent({
//     this.socketId,
//     this.reconnect = false,
//   });
//   @override
//   List<Object> get props => [
//         socketId,
//         reconnect,
//       ];
// }

// class ChatGetRefreshTokenEvent extends ChatEvent {
//   @override
//   List<Object> get props => [];
// }

// class ChatGetListBookingEvent extends ChatEvent {
//   final List<Booking> bookings;

//   const ChatGetListBookingEvent({this.bookings});
//   @override
//   List<Object> get props => [bookings];
// }

// class ChatUserChangeBookingEvent extends ChatEvent {
//   final Map<String, dynamic> data;

//   const ChatUserChangeBookingEvent({this.data});
//   @override
//   List<Object> get props => [data];
// }

// class ChatConnectedEvent extends ChatEvent {
//   final bool connected;
//   const ChatConnectedEvent({
//     this.connected = true,
//   });
//   @override
//   List<Object> get props => [connected];
// }

// //ChatUpdateTokenEvent
// class ChatUpdateTokenEvent extends ChatEvent {
//   final String accessToken;
//   final DateTime period;
//   final int expire;

//   const ChatUpdateTokenEvent({
//     this.accessToken,
//     this.period,
//     this.expire,
//   });
//   @override
//   List<Object> get props => [
//         accessToken,
//         period,
//         expire,
//       ];
// }

// class ChatNotifyOnlineEvent extends ChatEvent {
//   final bool online;
//   final List<User> friends;
//   final String accessToken;
//   const ChatNotifyOnlineEvent({this.online, this.friends, this.accessToken});
//   @override
//   List<Object> get props => [online, friends, accessToken];
// }

// //RESPONSE_MESSAGE_BOOKING
// class ChatReceiveMessagesBookingEvent extends ChatEvent {
//   final Map<String, dynamic> data;

//   const ChatReceiveMessagesBookingEvent({this.data});
//   @override
//   List<Object> get props => [data];
// }
