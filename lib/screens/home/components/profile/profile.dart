import 'package:amit_project/screens/home/components/profile/provider/profileprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var provider2 = Provider.of<ProfileProvider>(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                context.read<ProfileProvider>().onchange_deletedata(context);
              },
              icon: const Icon(Icons.delete))
        ],
      )),
    );
  }
}
