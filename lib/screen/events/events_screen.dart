import 'package:flutter/material.dart';
import 'package:flutter_traveling_app/components/app_bar.dart';
import 'package:flutter_traveling_app/components/custom_nav_bar.dart';
import 'package:flutter_traveling_app/screen/events/components/events_body.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'New Events',
        isTransperent: true,
      ),
      body: EventScreenBody(),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
