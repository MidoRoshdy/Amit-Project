import 'package:amit_project/screens/home/components/message/provider/messagestate.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/colors.dart';

class MessageProvier extends ChangeNotifier {
  MessageState state = MessageState();
  void deleteText() {
    state.messageController.clear();
    notifyListeners();
  }

  void getOtherFile(context) async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    PlatformFile file = resultFile!.files.first;

    if (file.size < 10000001) {
      //10 MB
      state.file["name"] = file.name;
      state.file["size"] = file.size.toInt();
      state.file["path"] = file.path;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Error..  max file size 10 MB")));
    }
    notifyListeners();
  }

  void showBottomSheetChat(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 490,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 3.9,
                  width: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pushNamed("unreadWidget");
                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27, right: 27, top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColours.neutral300),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Iconsax.briefcase),
                        SizedBox(
                          width: 9,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              "Visit job post",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pushNamed("unreadWidget");
                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27, right: 27, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColours.neutral300),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Iconsax.note_2),
                        SizedBox(
                          width: 9,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              "View my application",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pushNamed("unreadWidget");
                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27, right: 27, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColours.neutral300),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Iconsax.sms),
                        SizedBox(
                          width: 9,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              "Mark as unread",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pushNamed("unreadWidget");
                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27, right: 27, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColours.neutral300),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Iconsax.notification),
                        SizedBox(
                          width: 9,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              "Mute",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pushNamed("unreadWidget");
                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27, right: 27, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColours.neutral300),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Iconsax.import),
                        SizedBox(
                          width: 9,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              "Archive",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pushNamed("unreadWidget");
                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27, right: 27, top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColours.neutral300),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Iconsax.trash),
                        SizedBox(
                          width: 9,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              "Delete conversation",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
