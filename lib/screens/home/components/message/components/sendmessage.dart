import 'package:amit_project/core/assets.dart';
import 'package:amit_project/screens/home/components/message/provider/messageprovider.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../../../../../Data/models/chat/chat_model.dart';
import '../../../../../core/colors.dart';

class SendMassege extends StatefulWidget {
  const SendMassege({Key? key}) : super(key: key);

  @override
  State<SendMassege> createState() => _SendMassegeState();
}

class _SendMassegeState extends State<SendMassege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(
                  width: 9,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                    child: Image.asset(
                  Assets.TwitterLogo,
                )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Twitter",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 150,
                ),
                IconButton(
                    onPressed: () {
                      context
                          .read<MessageProvier>()
                          .showBottomSheetChat(context);
                    },
                    icon: const Icon(Iconsax.more))
              ],
            ),
            const SizedBox(height: 30),
            const Divider(
              thickness: 1.5,
              height: 0,
            ),
            Container(
                color: AppColours.neutral100,
                height: 640,
                child: GroupedListView<chat, DateTime>(
                  elements: context.watch<MessageProvier>().state.messagesList,
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  useStickyGroupSeparators: true,
                  floatingHeader: true,
                  groupBy: (message) => DateTime(
                      message.date.year, message.date.month, message.date.day),
                  groupHeaderBuilder: (chat chat) => SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 1.5,
                          width: 120,
                          color: AppColours.neutral300,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          child: Text(
                            DateFormat.MMMEd().format(chat.date),
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColours.neutral400),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 1.5,
                          width: 120,
                          color: AppColours.neutral300,
                        ),
                      ],
                    ),
                  ),
                  itemBuilder: (context, chat message) => Align(
                    alignment: message.sentByUser
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      width: message.text.characters.length.toDouble() < 10
                          ? message.text.characters.length.toDouble() == 1 ||
                                  message.text.characters.length.toDouble() ==
                                      2 ||
                                  message.text.characters.length.toDouble() == 3
                              ? 56
                              : message.text.characters.length.toDouble() < 8
                                  ? message.text.characters.length.toDouble() *
                                      25
                                  : message.text.characters.length.toDouble() *
                                      18
                          : message.text.characters.length.toDouble() < 22
                              ? message.text.characters.length.toDouble() > 5
                                  ? message.text.characters.length.toDouble() *
                                      10
                                  : message.text.characters.length.toDouble() *
                                      18
                              : message.text.characters.length.toDouble() * 3.5,
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: message.sentByUser
                              ? AppColours.primary500
                              : AppColours.neutral200,
                          borderRadius: BorderRadius.only(
                            topRight: message.sentByUser
                                ? const Radius.circular(0)
                                : const Radius.circular(10),
                            topLeft: message.sentByUser
                                ? const Radius.circular(10)
                                : const Radius.circular(0),
                            bottomLeft: const Radius.circular(10),
                            bottomRight: const Radius.circular(10),
                          )),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 15,
                              right: 15,
                            ),
                            child: Text(
                              message.text,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: message.sentByUser
                                    ? AppColours.neutral100
                                    : AppColours.neutral700,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: const EdgeInsets.only(
                                  right: 15, top: 10, bottom: 10),
                              child: Text(
                                DateFormat.Hm().format(message.date),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: message.sentByUser
                                      ? AppColours.neutral300
                                      : AppColours.neutral400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    context.read<MessageProvier>().getOtherFile(context);
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: AppColours.neutral300, width: 1.3)),
                    child: const Icon(Iconsax.paperclip_2),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 48,
                  width: 240,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColours.neutral100,
                      borderRadius: BorderRadius.circular(100),
                      border:
                          Border.all(color: AppColours.neutral200, width: 1.3)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                      controller: context
                          .watch<MessageProvier>()
                          .state
                          .messageController,
                      onFieldSubmitted: (text) {
                        final message = chat(
                          text: text,
                          date: DateTime.now(),
                          sentByUser: true,
                        );
                        if (text.isNotEmpty) {
                          setState(() => context
                              .watch<MessageProvier>()
                              .state
                              .messagesList
                              .add(message));
                          context.read<MessageProvier>().deleteText();
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Write a message...",
                        hintStyle: TextStyle(
                            fontSize: 14, color: AppColours.neutral400),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: AppColours.neutral300, width: 1.3)),
                    child: const Icon(Iconsax.microphone_2),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
