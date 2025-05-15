import 'package:basic_of_flutter_2/sliver_demo.dart';
import 'package:basic_of_flutter_2/wrap_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'button_demo.dart';
import 'column_demo_1.dart';
import 'column_row_demo.dart';
import 'card_demo.dart';
import 'menu_demo.dart';
import 'sizebox_demo.dart';
import 'ascpect_ratio_demo.dart';
import 'list_view_demo_1.dart';
import 'list_view_demo_2.dart';
import 'grid_view_demo_1.dart';
import 'layout_builder_demo.dart';
import 'media_query_demo.dart';
class WebviewDemo extends StatefulWidget {
  @override
  State<WebviewDemo> createState() => _WebviewDemoState();
}
class _WebviewDemoState extends State<WebviewDemo> {
  late WebViewController controller;
  String websiteURL = "https://www.divyabhaskar.co.in/";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted)..loadRequest(Uri.parse(websiteURL));
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPress(context),
      child: Scaffold(
        body: new WebViewWidget(controller: controller),
      ),
    );
  }

  Future<bool> onBackPress(BuildContext context) async {
      if(await controller.canGoBack() == true)
      {
        controller.goBack();
        return Future.value(false);
      }
      else
      {
        return Future.value(true);
      }
  }
}

void main() async {
  // WidgetsFlutterBinding.ensureInitialized(); // Required when using async in main
  // tz.initializeTimeZones();
  //
  // await initialize();                 // ✅ fixed: await initialization
  // await requestNotificationPermission(); // ✅ fixed: await permission
  // runApp(MenuDemo());
  runApp(MaterialApp(home: WebviewDemo()));

}

