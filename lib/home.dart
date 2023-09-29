import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('notification'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => setBadgeNum(context),
          child: Text('اضافه الاشعارات'),
          style: getBtnStyle(context),
        ),
      ),
    );
  }

  setBadgeNum(context) async {
    var FlutterAppBadger;
    await FlutterAppBadger.updateBadgeCount(15);
    var QuickAlert;
    var QuickAlertType;
    QuickAlert.show(
      context: context,
      title: 'تم بنجاح',
      text: 'تم اضافه الاشعارات',
      type: QuickAlertType.succes,
    );
  }
}

getBtnStyle(BuildContext context) {}
