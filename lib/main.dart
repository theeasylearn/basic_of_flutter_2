import 'package:basic_of_flutter_2/sliver_demo.dart';
import 'package:basic_of_flutter_2/wrap_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:permission_handler/permission_handler.dart';
import 'button_demo.dart';
import 'column_demo_1.dart';
import 'column_row_demo.dart';
import 'card_demo.dart';
import 'sizebox_demo.dart';
import 'ascpect_ratio_demo.dart';
import 'list_view_demo_1.dart';
import 'list_view_demo_2.dart';
import 'grid_view_demo_1.dart';
import 'layout_builder_demo.dart';
import 'media_query_demo.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class MenuDemo extends StatefulWidget {
  @override
  State<MenuDemo> createState() {
     _MenuDemoState object = new _MenuDemoState();
     return object;
  }
}

class _MenuDemoState extends State<MenuDemo> {
  String Title = 'Example of menu';
  void _showNotification() async {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'basic_channel',
      'Basic Notifications',
      channelDescription: 'Channel for basic notifications',
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      'this is notification title',
      'this is notification detail. ',
      notificationDetails,
    );
  }


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Menu Button Example"),
                actions: [
                   PopupMenuButton(itemBuilder: (BuildContext context){
                        return [
                            PopupMenuItem(child: Text("Display Toast"), value: 1),
                            PopupMenuItem(child: Text("Display Snackbar"), value:2),
                            PopupMenuItem(child: Text("Display Notification"), value:3),
                        ];
                   },onSelected: (value) {
                      print(value);
                      setState(() {
                          Title = value.toString();
                          int choice = int.parse(value.toString());
                          if(choice == 1)
                          {
                              Fluttertoast.showToast(
                                  msg: "this is toast",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.TOP);
                          }
                          else if(choice == 2)
                          {
                              Get.snackbar(
                                  duration: Duration(days: 1),
                                  'this is snackbar Title',
                                  'this snackbar label',
                                  snackPosition: SnackPosition.BOTTOM,
                                  colorText: Colors.white,
                                  backgroundColor: Colors.black,
                                  isDismissible: true,
                                  mainButton: TextButton(onPressed: () {
                                      Get.back();
                                  }, child: Text("Hide")));
                          }
                          else if(choice == 3)
                          {
                            print('choice 3');
                            _showNotification();
                          }
                      });
                   },)
                ],
            ),
            body: Center(
                child: Text(Title),
            ),
        ),
    );
  }
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> requestNotificationPermission() async {
  var status = await Permission.notification.status;
  if (!status.isGranted) {
    var result = await Permission.notification.request();
    print('Notification permission granted: ${result.isGranted}');
  }
}

Future<void> initialize() async {
  const AndroidInitializationSettings androidInit =
  AndroidInitializationSettings('@mipmap/ic_launcher');

  const InitializationSettings initSettings = InitializationSettings(
    android: androidInit,
  );

  await flutterLocalNotificationsPlugin.initialize(initSettings);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required when using async in main
  tz.initializeTimeZones();

  await initialize();                 // ✅ fixed: await initialization
  await requestNotificationPermission(); // ✅ fixed: await permission
  runApp(MenuDemo());
}

