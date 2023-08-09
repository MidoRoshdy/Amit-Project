import 'package:flutter/material.dart';

import '../../../../../Data/models/chat/chat_model.dart';
import '../../../../../Data/models/chat/message_model.dart';
import '../../../../../core/assets.dart';

class MessageState {
  List<MessageModel> Masseges = [
    MessageModel(
      id: 1,
      name: "Twitter",
      Photo: Assets.TwitterLogo,
      Message:
          "Hi Mohamed,I'm looking for a designer   a designer a designer a designer a designer a designer",
      Time: "12.00 PM",
    ),
    MessageModel(
      id: 2,
      name: "facebok",
      Message: "Hi Mohamed ,I'm looking for a designer",
      Photo: Assets.ZoomLogo,
      Time: "4.00 PM",
    )
  ];
  List<chat> messagesList = [
    chat(
        text:
            "Hi Melan, thank you for considering me, this is good news for me.",
        date: DateTime.now()
            .subtract(const Duration(days: 41, hours: 20, minutes: 3)),
        sentByUser: true),
    chat(
        text: "Hi",
        date: DateTime.now().subtract(const Duration(days: 12, hours: 20)),
        sentByUser: false),
    chat(
        text: "Rafif!, I'm Melan the selection team from Twitter.",
        date: DateTime.now().subtract(const Duration(hours: 10, minutes: 30)),
        sentByUser: false),
    chat(
        text: "Can we have an interview via google meet call today at 3pm?",
        date: DateTime.now().subtract(const Duration(hours: 2, minutes: 12)),
        sentByUser: true),
    chat(
        text: "Can we have an interview via google meet call today at 3pm?",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 59)),
        sentByUser: false),
    chat(
        text: "Of course, I can!",
        date: DateTime.now().subtract(const Duration(minutes: 50)),
        sentByUser: true),
    chat(
        text:
            "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you!",
        date: DateTime.now().subtract(const Duration(seconds: 1)),
        sentByUser: false),
    chat(
        text:
            "Hi Melan, thank you for considering me, this is good news for me.",
        date: DateTime.now()
            .subtract(const Duration(days: 41, hours: 20, minutes: 3)),
        sentByUser: true),
    chat(
        text: "Hi",
        date: DateTime.now().subtract(const Duration(days: 12, hours: 20)),
        sentByUser: false),
    chat(
        text: "Rafif!, I'm Melan the selection team from Twitter.",
        date: DateTime.now().subtract(const Duration(hours: 10, minutes: 30)),
        sentByUser: false),
    chat(
        text: "Can we have an interview via google meet call today at 3pm?",
        date: DateTime.now().subtract(const Duration(hours: 2, minutes: 12)),
        sentByUser: true),
    chat(
        text: "Can we have an interview via google meet call today at 3pm?",
        date: DateTime.now().subtract(const Duration(hours: 1, minutes: 59)),
        sentByUser: false),
    chat(
        text: "Of course, I can!",
        date: DateTime.now().subtract(const Duration(minutes: 50)),
        sentByUser: true),
    chat(
        text:
            "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you!",
        date: DateTime.now().subtract(const Duration(seconds: 1)),
        sentByUser: false),
  ].reversed.toList();

  bool unread = false;
  bool send = false;

  List messagesUnread = [];
  List messages = [];
  List archived = [];
  List spam = [];
  Map file = {};

  TextEditingController messageController = TextEditingController();
}
