import 'package:flutter/material.dart';

class ExSizedbox extends StatelessWidget {
  const ExSizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
//         // 1. 하위 위젯의 크기를 보장하기 위한 목적!
//         child: SizedBox(
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue,
//             child: ElevatedButton(onPressed: () {}, child: Text('button')),
//           ),
//         ),
//       ),
//     );
//   }
// }
        // 2. 위젯과 위젯 사이의 크기 변경
        child: Row(children: [
          ElevatedButton(onPressed: () {}, child: Text('button1')),
          SizedBox(
            width: 30,
          ),
          ElevatedButton(onPressed: () {}, child: Text('button2')),
        ]),
      ),
    );
  }
}
