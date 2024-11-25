import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // kIsWeb 사용
import 'dart:async';
import 'package:permission_handler/permission_handler.dart';
import 'package:app_settings/app_settings.dart';


void main() {
  runApp(const PermissionExample());
}

class PermissionExample extends StatelessWidget {
  const PermissionExample({Key? key}) : super(key: key);

  Future<void> requestPermission() async {
    // 예: 위치 권한 요청
    PermissionStatus status = await Permission.location.request();

    if (status.isGranted) {
      print("위치 권한 허용됨");
    } else if (status.isDenied) {
      print("위치 권한 거부됨");
    } else if (status.isPermanentlyDenied) {
      print("위치 권한 영구 거부됨. 설정 화면으로 이동.");
      AppSettings.openAppSettings(); // 설정 화면으로 이동
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('권한 요청 + 설정 화면 이동'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: requestPermission,
          child: const Text('위치 권한 요청하기'),
        ),
      ),
    );
  }




// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: UsageStatsScreen(),
//     );
//   }
// }
//
// class UsageStatsScreen extends StatefulWidget {
//   @override
//   _UsageStatsScreenState createState() => _UsageStatsScreenState();
// }
//
// class _UsageStatsScreenState extends State<UsageStatsScreen> {
//   List<Map<String, dynamic>> events = [];
//   Map<String, dynamic> _netInfoMap = {};
//
//   @override
//   void initState() {
//     super.initState();
//     initUsage();
//   }
//
//   Future<void> initUsage() async {
//     if (kIsWeb) {
//       // 웹에서 더미 데이터 설정
//       debugPrint("UsageStats is not supported on web.");
//       setState(() {
//         events = [
//           {"packageName": "example.web", "eventType": "Demo Event", "timeStamp": DateTime.now().toString()},
//         ];
//         _netInfoMap = {
//           "example.web": {"rxTotalBytes": 123456, "txTotalBytes": 654321},
//         };
//       });
//       return;
//     }
//
//     // Android 환경에서 실제 로직
//     debugPrint("This logic is for Android only. Web is not supported.");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Usage Stats")),
//       body: RefreshIndicator(
//         onRefresh: initUsage,
//         child: kIsWeb
//             ? events.isEmpty
//             ? const Center(
//           child: Text(
//             "No usage data available (Web environment).",
//             style: TextStyle(fontSize: 18, color: Colors.grey),
//           ),
//         )
//             : ListView.separated(
//           itemBuilder: (context, index) {
//             var event = events[index];
//             var networkInfo = _netInfoMap[event["packageName"]];
//             return ListTile(
//               title: Text(event["packageName"] ?? "Unknown Package"),
//               subtitle: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Event Type: ${event["eventType"]}"),
//                   Text("Timestamp: ${event["timeStamp"]}"),
//                   if (networkInfo != null)
//                     Text(
//                         "Received bytes: ${networkInfo["rxTotalBytes"]}\nTransferred bytes: ${networkInfo["txTotalBytes"]}"),
//                 ],
//               ),
//             );
//           },
//           separatorBuilder: (context, index) => const Divider(),
//           itemCount: events.length,
//         )
//             : const Center(
//           child: Text(
//             "Android environment required for usage stats.",
//             style: TextStyle(fontSize: 18, color: Colors.grey),
//           ),
//         ),
//       ),
//     );
//   }
// }
